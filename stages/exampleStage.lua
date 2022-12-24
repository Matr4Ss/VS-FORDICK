function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'stageback', -600, -300);
	setScrollFactor('stageback', 0.9, 0.9);
	
	makeLuaSprite('stagefront', 'stagefront', -650, 600);
	setScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_light', -125, -100);
		setScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('stagelight_right', 'stage_light', 1225, -100);
		setScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 1.1, 1.1);
		setProperty('stagelight_right.flipX', true); --mirror sprite horizontally

		makeLuaSprite('stagecurtains', 'stagecurtains', -500, -300);
		setScrollFactor('stagecurtains', 1.3, 1.3);
		scaleObject('stagecurtains', 0.9, 0.9);
	end

	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);

	runHaxeCode([[
		var mom:Character = new Character(-80, 110, 'mom');
		startCharacterPos(mom, true);
		if (curBeat % dad.danceEveryNumBeats == 0 && dad.animation.curAnim != null && !dad.animation.curAnim.name.startsWith('sing') && !dad.stunned)
		{
			dad.dance();
		}
	
	
	
	]])

	--makeAnimatedLuaSprite('mom', 'characters/Mom_Assets', -80, 110, 'sparrow')
	--setScrollFactor('mom', 1, 1)

	--addAnimationByPrefix('mom', 'idle', 'Mom Idle', 24, false)
	--addAnimationByPrefix('mom', 'singLEFT', 'Mom Left Pose', 24, false)
	--addAnimationByPrefix('mom', 'singUP', 'Mom Up Pose', 24, false)
	--addAnimationByPrefix('mom', 'singDOWN', 'MOM DOWN POSE', 24, false)
	--addAnimationByPrefix('mom', 'singRIGHT', 'Mom Pose Left', 24, false)

	--addOffset('mom', 'singLEFT', 250, -23)
	--addOffset('mom', 'singUP', 14, 71)
	--addOffset('mom', 'singDOWN', 20, -160)
	--addOffset('mom', 'singRIGHT', 10, -60)

	--addLuaSprite('mom', true)

	--close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
	--if direction == 0 then
		--playAnim('mom', 'singLEFT')
	--elseif direction == 1 then
		--playAnim('mom', 'singDOWN')
	--elseif direction == 2 then
		--playAnim('mom', 'singUP')
	--elseif direction == 3 then
		--playAnim('mom', 'singRIGHT')
	--end
end

--function playNoteAnim(obj, anim)
	--anims = {'singLEFT', 'singDOWN', 'singUP', 'singRIGHT'}
	--objectPlayAnimation('obj', anims[anim + 1])
	--runTimer('sing', (stepCrochet / 1000) * 2.1)
--end

--function onTimerCompleted(t,l,ll)
	--if t == "sing" then
		--objectPlayAnimation('mom', 'idle')
	--end
--end