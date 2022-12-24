mult = {0, 0} 
-- [0] - x multiplier
-- [1] - y multiplier
-- [2] - angle multiplier  
originPosSlep = {0, 0}

function onCreatePost()
	originPosSlep[0] = getProperty('slep.x')
	originPosSlep[1] = getProperty('slep.y')
	reset()
end

function onUpdate(elapsed)

	setProperty('slep.y', getProperty('slep.y') - mult[1] * elapsed)
	setProperty('slep.angle', getProperty('slep.angle') + mult[2] * elapsed)
	setProperty('stoneKEKW2.y', getProperty('stoneKEKW2.y') - 70 * elapsed)
	setProperty('stoneKEKW2.angle', getProperty('stoneKEKW2.angle') + 10 * elapsed)
	setProperty('stoneKEKW3.y', getProperty('stoneKEKW3.y') + 30 * elapsed)
	setProperty('stoneKEKW3.angle', getProperty('stoneKEKW3.angle') - 5 * elapsed)
--	setProperty('stoneKEKW1.x', getProperty('stoneKEKW1.x') - 40 * elapsed)
--	setProperty('stoneKEKW1.angle', getProperty('stoneKEKW1.angle') - 15 * elapsed)
if lowQuality then
	setProperty('slep.x',  getProperty('slep.x') + 6000 * elapsed) -- я гоню быстро
else
setProperty('slep.x',  getProperty('slep.x') - mult[0] * elapsed) -- лечу в таджикистан
end

	if getProperty('slep.x') >= 2191 then
		reset()
	end
	if getProperty('stoneKEKW2.y') <= -1048 then
		setProperty('stoneKEKW2.y', 1360)
	end
	if getProperty('stoneKEKW3.y') <= 1151 then
		setProperty('stoneKEKW3.y', -192)
	end
--	if getProperty('stoneKEKW1.x') <= -3093 then
--		setProperty('stoneKEKW1.x', 2674)
--	end
end

function reset()
	mult[0] = math.random(-70, -140)
	mult[1] = math.random(-10, 10)
	mult[2] = math.random(-70, 70)
	setProperty('slep.x', originPosSlep[0] + math.random(-40, 80))
	setProperty('slep.y', originPosSlep[1] + math.random(-120, 220))
end