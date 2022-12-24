posX = -350.0
posY = 40.0

function onCreate()
	-- background shit
	makeLuaSprite('stageback', '', -600, -300)
	luaSpriteMakeGraphic('stageback', 2540, 1300, '0xFF15161E')
	addLuaSprite('stageback', false)

	for i = 1, 8 do
		
		makeAnimatedLuaSprite('dude'..i, 'bgs/bulling/guy'..i, posX, posY)
		setScrollFactor('dude'..i, 0.8, 0.8)
		scaleObject('dude'..i, 0.7, 0.7)

		sprWidth = getProperty('dude'..i..'.width')
		sprHeight = getProperty('dude'..i..'.height')

		setProperty('dude'..i..'.x', posX + sprWidth * i + 30 * i)

		if i > 4 then
			balls = i - 4
			setProperty('dude'..i..'.x', posX + sprWidth * balls + 30 * balls)
			setProperty('dude'..i..'.y', posY + sprHeight + 30)
		end
		addAnimationByPrefix('dude'..i, 'idle', 'idle0', 24, false)
		if i == 4 then
			addAnimationByPrefix('dude'..i, 'idle-alt', 'u smell', 24)
		end
		addLuaSprite('dude'..i, false)
	end

	makeLuaSprite('stagefront', 'bgs/bulling/stage_bulling', -450, 580)
	scaleObject('stagefront', 1.05, 1.05)
	addLuaSprite('stagefront', false)

	--close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

function onBeatHit()
	if curBeat % 2 == 0 then
		for i = 1, 8 do
			objectPlayAnimation('dude'..i, 'idle', true)
		end
	end
end