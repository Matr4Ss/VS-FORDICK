gfX = 0.0
gfY = 0.0

bfX = 0.0
bfY = 0.0

dadX = 0.0
dadY = 0.0

idleSuffix = ''

botplaySine = 0.0

tweenforlightoffset = 605 - 20

lightsX = -368 + 20
lightsY = 200

flip = true

function onCreate()
   setProperty('camGame.visible', false)
--   doTweenAlpha('caca', 'camHUD', 0, 0.000000000000001, linear) родион лох ХАХАХА
-- 																  ИДИ НАХУЙ
--                                                   сам иди, лошок!
end

function onUpdate(elapsed)
	gfX = getProperty('gf.x')
	gfY = getProperty('gf.y')

	dadX = getProperty('dad.x')
	dadY = getProperty('dad.y')

	-- fixing some sprite placement
	setProperty('bedParticles.x', gfX)
	setProperty('bedParticles.y', gfY)

	--botplaySine += 180 * elapsed;
	--botplayTxt.alpha = 1 - Math.sin((Math.PI * botplaySine) / 180); -- botplay code lol
	--doTweenAlpha('out', 'rec', 1 - math.sin((math.pi * (180 * elapsed)) / 180), 2)

	botplaySine = botplaySine + 180 * elapsed
	setProperty('rec.alpha', 1 - math.sin((math.pi * botplaySine) / 180))
end

function onCreatePost()
	setProperty('camHUD.alpha', 0)
	
	bfX = getProperty('boyfriend.x') -- hopka x pos
	bfY = getProperty('boyfriend.y') -- hopka y pos

	-- fixing some sprite placement
	setProperty('gf.x', 830 + bfX)
	setProperty('gf.y', bfY - 100)

	setProperty('micFALL.x', bfX)
	setProperty('micFALL.y', bfY)

	setProperty('slidee.x', bfX + 930)
	setProperty('slidee.y', bfY + 360)

	setProperty('nerdFaker.x', bfX - 270)
	setProperty('nerdFaker.y', bfY + 90)

	setProperty('matrassREC.x', dadX - 1100)
	setProperty('matrassREC.y', 10 + dadY + 320)

	setProperty('phone.x', dadX - 1205)
	setProperty('phone.y', 490 + dadY + 280)

	setProperty('rec.x', dadX - 1180)
	setProperty('rec.y', dadY - 60 + 320)
end

function onStepHit()
	if curStep == 370 then
		runTimer('hopkaSpat', 0.7917) -- frame perfect timing
	end
	if curStep >= 383 then
		removeLuaSprite('nerdFaker', true)
	end
	if curStep == 383 then
		doTweenX('gayLuigi', 'slidee', 50 + bfX, 2, 'quartInOut')
	end
	if curStep == 2 then
		setProperty('camGame.visible', true)
		cameraFlash('game', '000000', 10, true)
		doTweenZoom('camcum', 'camGame', 0.9, 6, 'circOut')
	end
end

function onBeatHit()
	if curBeat == 24 then
		doTweenAlpha('camHUD-alpha', 'camHUD', 1, 2)
	end

	if curBeat == 88 then
		doTweenX('transRights', 'gf', bfX - 180, 1.6, 'quartInOut')
	end

	if curBeat % 2 == 0 then
		if curBeat >= 109 then
			objectPlayAnimation('matrassREC', 'idle', true)
		end
		objectPlayAnimation('dude4', 'idle'..idleSuffix, true)
		objectPlayAnimation('nerdFaker', 'idle', true)
	end

	--[[ adds zoom on every beat ]]--
	if curBeat >= 96 and curBeat <= 126  -- for HopKa:
	or curBeat >= 128 and curBeat <= 160 -- это все для сортировки (мне так удобнее)
	or curBeat >= 288 and curBeat <= 320 -- КОД РАБОТАЕТ ДАЖЕ ТАК!!!
	or curBeat >= 324 and curBeat <= 352 -- поменяешь - трахну в жопу
	then
		triggerEvent('Add Camera Zoom')
	end

	--[[ adds zoom every 2nd beat ]]--
	if curBeat >= 16 and curBeat <= 92
	or curBeat >= 160 and curBeat <= 224
	or curBeat >= 256 and curBeat <= 284
	or curBeat >= 320 and curBeat <= 324
	or curBeat >= 352 and curBeat <= 360
	then
		if curBeat % 2 == 0 then
			triggerEvent('Add Camera Zoom')
		end
	end

	--[[ adds zoom every 4th beat ]]--
	if curBeat >= 0 and curBeat <= 16
	or curBeat >= 224 and curBeat <= 256
	then
		if curBeat % 4 == 0 then
			triggerEvent('Add Camera Zoom')
		end
	end

	if curBeat == 109 then
		doTweenX('rec1', 'phone', dadX - 420, 2, 'quartInOut')
		doTweenX('rec2', 'matrassREC', dadX - 330, 2, 'quartInOut')
		doTweenX('rec3', 'rec', dadX - 250, 2, 'quartInOut')
	end

	if curBeat == 364 then
		setProperty('camGame.visible', false)
		setProperty('camHUD.visible', false)
	end	
	
	if curBeat == 224 then
		--[[ норка, сделай через setObjectOrder() мне лень
		БЛЯТЬ, ТЫ АХУЕЛ???? ]]-- 
--[[	setProperty('gf.alpha', 0.3)
		setProperty('matrassREC.alpha', 0.3)
		setProperty('phone.alpha', 0.3)]]--
		setObjectOrder('matrassREC', getObjectOrder('light2') + 1)
			for i = 1,2 do	
		doTweenAlpha('lightalphatweenandmyasskekw'..i, 'light'..i, 0.6, 1, 'circOut')
		setProperty('light'..i..'.x', lightsX)
		setProperty('light'..i..'.y', lightsY)
			end
		doTweenColor('asskekw', 'matrassREC', '1a1a1a', 0.6, 'circOut')
	end

	if curBeat == 256 then
			for i = 1,2 do	
		doTweenX('lightxtweenandmyasskekw2'..i, 'light'..i, lightsX + tweenforlightoffset, 1, 'circOut')

			end
	end

	if curBeat == 284 then

		for i = 1,2 do
			doTweenAlpha('lightalphatweenandmyasskekw'..i, 'light'..i, 0, 1, 'circOut')
		end
			doTweenColor('asskekw', 'matrassREC', 'ffffff', 1, 'circOut')		
	end

end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'hopkaSpat' then
		setProperty('micFALL.visible', true)
		objectPlayAnimation('micFALL', 'fall', true)
		triggerEvent('Alt Idle Animation', 'GF', '-alt')
		setProperty('bedParticles.visible', true)
		objectPlayAnimation('bedParticles', 'amongus', true)
		runTimer('remove', 0.4583)
		idleSuffix = '-alt'
	end
	if tag == 'remove' then
		removeLuaSprite('bedParticles', true)
		--doTweenX('deleteFNF', 'gf', bfX - 200, 0.6, 'quartInOut')
	end
end

function onTweenCompleted(tag)
    if tag == 'camcum' then
       setProperty('defaultCamZoom', 0.9)
    end

	if tag == 'gayLuigi' then
		removeLuaSprite('micFALL', true)
		objectPlayAnimation('slidee','mic2', true)
		doTweenX('pootis', 'slidee', bfX - 3000, 2, 'quartInOut')
	end
	if tag == 'pootis' then
		removeLuaSprite('slidee', true)
		-- playSound('carCrash', 1)
	end
	--[[
		if tag == 'out' then
		doTweenAlpha('in', 'rec', 1, 1.2)
	end
	if tag == 'in' then
		doTweenAlpha('out', 'rec', 0, 1.2)
	end
	]]--
end