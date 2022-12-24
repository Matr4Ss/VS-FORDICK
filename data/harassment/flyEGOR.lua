-- hopka: я снова украл код, бебебе
-- rich: ты ещё его и испортил дебил

--[[function onCreatePost()
	camOffset = getProperty('boyfriend.cameraPosition[1]')
end]]--

curSel = 0

--function onStart()
--	setProperty('ppp.y', getPropertyFromClass('lime.app.Application', 'current.window.y'))
--end

function onUpdate(elapsed)
	camBFY = getMidpointY('boyfriend') - 100 + (getProperty('boyfriend.cameraPosition[1]') + getProperty('boyfriendCameraOffset[1]'))
	--bfY = getMidpointY('boyfriend') - 100

	started = true

	songPos = getSongPosition()
	currentBeat = (songPos / 4000) * (curBpm / 40)

	--doTweenY('opponentmove', 'dad', - 100 - 150 * math.sin((currentBeat + 12 * 12) * math.pi), 2)
	--doTweenY('egormove', 'egor', 150 * math.sin((currentBeat + 12 * 12) * math.pi), 2)
	setProperty('egor.y', 40 * math.sin((currentBeat + 12 * 12) * math.pi))
--	setPropertyFromClass('lime.app.Application', 'current.window.y', getProperty('ppp.y'))
--	setProperty('ppp.y', getPropertyFromClass('lime.app.Application', 'current.window.y') + 5 * math.sin((currentBeat + 6 * 6) * math.pi))
	--setProperty('boyfriend.y', 60 * math.sin((currentBeat + 12 * 12) * math.pi))

	if camOnBf then
		setProperty('camFollow.y', camBFY)
	end
	if curSel == 2 then
		setProperty('boyfriend.y', getProperty('egor.y')) -- я заебался эта чинить аааааааааааааааааааааа
															--потому что ты долбоёб наъуй!
	end
end

function onMoveCamera(focus)
	if focus == 'dad' then -- then cam focused on dad
		camOnBf = false
		--setProperty('defaultCamZoom', dadCam)
	else -- then on bf, gf, etc
		camOnBf = true
		--setProperty('defaultCamZoom', defaultCam)
	end
end

function onEvent(name, value1, value2)
	if name == 'Select harASS' then
		curSel = tonumber(value1)
		-- 1 - матрас
		-- 2 - егор
		-- 3 - рофос
   end
end
