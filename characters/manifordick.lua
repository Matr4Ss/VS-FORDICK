-- hopka: да, я украл код. имею право!!! https://gamebanana.com/tuts/14588
-- rich: ая починил камеру гыгыгыы
-- hopka: пососи нежно

camX = 0
camY = 0

dadCam = 0.9
defaultCam = 0.7
camOnDad = false

function onCreatePost()
	--camX = 150 + getProperty('dad.cameraPosition[0]')
	
	dadCam = 1.0
	defaultCam = getProperty('defaultCamZoom')
end

function onUpdate(elapsed)  --  if curStep == 0 then
	camY = getMidpointY('dad') - 100 + (getProperty('dad.cameraPosition[1]') + getProperty('opponentCameraOffset[1]'))

	--dadX = getMidpointX('dad')
	dadY = getMidpointY('dad')

	started = true

	songPos = getSongPosition()
	currentBeat = (songPos / 5000) * (curBpm / 60)

	--doTweenY('opponentmove', 'dad', - 100 - 150 * math.sin((currentBeat + 12 * 12) * math.pi), 2)
	setProperty('dad.y', -80 * math.sin((currentBeat + 12 * 12) * math.pi))

	if camOnDad then -- sets cam position every frame
		--setProperty('camFollow.x', dadX + camX)
		setProperty('camFollow.y', camY)
	end
end

function onMoveCamera(focus)
	if focus == 'dad' then -- then cam focused on dad
		camOnDad = true
		setProperty('defaultCamZoom', dadCam)
	else -- then on bf, gf, etc
		camOnDad = false
		setProperty('defaultCamZoom', defaultCam)
	end
end