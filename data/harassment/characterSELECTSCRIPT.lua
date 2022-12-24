bfposX = 0
bfposY = 0

rofosX = 500
rofosY = -60

egorX = 200
egorY = -300

matrassX = 0
matrassY = 0

selectpussy = 1

singing = false

function onCreate()
	bfposX = getProperty('boyfriend.x')
	bfposY = getProperty('boyfriend.y')

	makeAnimatedLuaSprite('rofos', 'characters/rofos', bfposX + rofosX, bfposY + rofosY)
	scaleObject('rofos', 0.8, 0.8, false) -- hopka: сука сломано! -- rich: нет, ты просто лохъ
	addAnimationByPrefix('rofos', 'rofos idle', 'rofos idle', 24, false)
	objectPlayAnimation('rofos', 'rofos idle')
		
	makeAnimatedLuaSprite('egor', 'characters/egor', bfposX + egorX, bfposY + egorY)
	scaleObject('egor', 0.8, 0.8, false)
	addAnimationByPrefix('egor', 'egor idle', 'egor', 24, false)
	objectPlayAnimation('egor', 'egor idle')
		
	makeAnimatedLuaSprite('matrass', 'characters/matrass', bfposX + matrassX, bfposY + matrassY)
	scaleObject('matrass', 0.9, 0.9, false)
	addAnimationByPrefix('matrass', 'matrass idle', 'ass idle', 24, false)
	objectPlayAnimation('matrass', 'matrass idle')

	addLuaSprite('matrass', true)
	addLuaSprite('egor', false)
	addLuaSprite('rofos', true)
end

function onBeatHit()
	if curBeat >= 32 then
		if curBeat % 2 == 0 then
			triggerEvent('Add Camera Zoom', '0.017', '0.032')
		end	
	end
	if curBeat % 2 == 0 then
		if not singing then	-- fixes bops on beat
			objectPlayAnimation('boyfriend', 'idle', true) -- its broken for some reason idk
		end
		objectPlayAnimation('rofos', 'rofos idle', true)
		objectPlayAnimation('egor', 'egor idle', true)
		objectPlayAnimation('matrass', 'matrass idle', true)
	end
end

function onCountdownTick(counter)
	if counter % 2 == 0 then
		objectPlayAnimation('boyfriend', 'idle', true) -- its broken for some reason idk
		objectPlayAnimation('rofos', 'rofos idle', true)
		objectPlayAnimation('egor', 'egor idle', true)
		objectPlayAnimation('matrass', 'matrass idle', true)
	end
end

function onEvent(name, value1, value2)
	if name == 'Select harASS' then
		selectpussy = tonumber(value1)
		-- 1 - матрас
		-- 2 - егор
		-- 3 - рофос
   end
end

function onUpdate()
	if selectpussy == 1 then
		setProperty('matrass.visible', false)
		--setProperty('egor.visible', true)
		setProperty('egor.alpha', 1)
		setProperty('rofos.visible', true)
		triggerEvent('Change Character', 'BF', 'matrass')
	elseif selectpussy == 2 then
		setProperty('matrass.visible', true)
		--setProperty('egor.visible', false)
		setProperty('egor.alpha', 0.00000001)
		setProperty('rofos.visible', true)
		triggerEvent('Change Character', 'BF', 'egor')
	elseif selectpussy == 3 then
		setProperty('matrass.visible', true)
		--setProperty('egor.visible', true)
		setProperty('egor.alpha', 1)
		setProperty('rofos.visible', false)
		triggerEvent('Change Character', 'BF', 'rofos')
	end
	if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT'
	or getProperty('boyfriend.animation.curAnim.name') == 'singDOWN'
	or getProperty('boyfriend.animation.curAnim.name') == 'singUP'
	or getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT'
	or getProperty('boyfriend.animation.curAnim.name') == 'singLEFT-miss'
	or getProperty('boyfriend.animation.curAnim.name') == 'singDOWN-miss'
	or getProperty('boyfriend.animation.curAnim.name') == 'singUP-miss'
	or getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT-miss'
	then
		singing = true
	else
		singing = false
	end
end