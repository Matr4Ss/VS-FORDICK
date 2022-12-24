function onCreate()
	-- wellcome to HELL!! :smiling_imp:
	--родион лох
		for i = 1,2 do	
	makeLuaSprite('light'..i, 'bgs/hightlight_'..i, -368)
	scaleObject('light'..i, 2, 2, false)
	--setScrollFactor('light'..i, 1.1, 1.1)

	setProperty('light'..i..'.alpha', 0)
	setBlendMode('light1', 'multiply')
		end

	makeAnimatedLuaSprite('nerdFaker', 'characters/HUMST_nerd')
	setLuaSpriteScrollFactor('nerdFaker', 1.0, 1.0)
	addAnimationByPrefix('nerdFaker', 'idle', 'humst idle', 24, false)
	objectPlayAnimation('nerdFaker', 'idle', true)
	addLuaSprite('nerdFaker', true)

	makeAnimatedLuaSprite('micFALL', 'bulling_events/mic_fall')
	setLuaSpriteScrollFactor('micFALL', 1.0, 1.0)
	addAnimationByPrefix('micFALL', 'fall', 'mic fall0', 24, false)
	setProperty('micFALL.visible', false)

	makeAnimatedLuaSprite('slidee', 'bulling_events/tumblr_sexyman', 2000, 620)
	setLuaSpriteScrollFactor('slidee', 1.05, 1.05)
	addAnimationByPrefix('slidee', 'mic1', 'matrass mic1', 24)
	addAnimationByPrefix('slidee', 'mic2', 'matrass mic2', 24)
	objectPlayAnimation('slidee', 'idle', true)

	makeAnimatedLuaSprite('phone', 'bulling_events/phone_idk')
	setLuaSpriteScrollFactor('phone', 0.95, 0.95)
	addAnimationByPrefix('phone', 'idle', 'phone', 24)
	objectPlayAnimation('phone', 'idle', true)

	makeLuaSprite('matrassREC', 'index')
    --makeAnimatedLuaSprite('matrassREC', 'bulling_events/matrASS')
    setLuaSpriteScrollFactor('matrassREC', 1.05, 1.05)
    scaleObject('matrassREC', 1.5, 1.5, false)
    --addAnimationByPrefix('matrassREC', 'idle', 'matrass record0', 24, false)
    --objectPlayAnimation('matrassREC', 'idle', true)

	makeAnimatedLuaSprite('rec', 'bulling_events/recording_ur_ass')
	setLuaSpriteScrollFactor('rec', 1.05, 1.05)
	addAnimationByPrefix('rec', 'idle', 'rec', 24)
	objectPlayAnimation('rec', 'idle', true)
	--doTweenAlpha('out', 'rec', 0, 1.2)

	makeAnimatedLuaSprite('bedParticles', 'bulling_events/effects')
	setLuaSpriteScrollFactor('bedParticles', 0.95, 0.95)
	addAnimationByPrefix('bedParticles', 'amongus', 'bed appear OFFSETS0', 24, false)
	setProperty('bedParticles.visible', false)

	addLuaSprite('bedParticles', true)
	addLuaSprite('micFALL', true)
	addLuaSprite('phone', true)
	addLuaSprite('matrassREC', true)
	addLuaSprite('rec', true)
	addLuaSprite('slidee', true)
	for i = 1,2 do
		addLuaSprite('light'..i, true)
	end
end