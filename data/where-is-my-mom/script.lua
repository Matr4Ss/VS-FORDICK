function onCreate()



setProperty('cameraSpeed', 69)
setProperty('dad.visible', false)
setProperty('iconP2.visible', false)

end

function onUpdate()

	for dicck = 0, 3 do 
		setPropertyFromGroup('opponentStrums', dicck, 'x', 10000)
	end

	setProperty('healthBarBG.visible', false)
	setProperty('healthBar.visible', false)
	setProperty('scoreTxt.visible', false)
	setProperty('iconP1.visible', false)
	setProperty('iconP2.visible', false)
	setProperty('healthBarWN.visible', false)
	setProperty('healthStrips.visible', false)

	if curBeat == 258 then
		setProperty('camHUD.visible', false)
		setProperty('camGame.visible', false)
	end
end

function onBeatHit()
	if curBeat == 1 then
		setProperty('cameraSpeed', 1)
	end
end

