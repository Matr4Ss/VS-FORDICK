mult = {0, 0} 
-- [0] - x multiplier
-- [1] - y multiplier
-- [2] - angle multiplier  
originPos = {0, 0}

function onCreatePost()
	originPos[0] = getProperty('gf.x')
	originPos[1] = getProperty('gf.y')
	reset()
end

function onUpdate(elapsed)
	setProperty('gf.x', getProperty('gf.x') - mult[0] * elapsed) -- лечу в таджикистан
	setProperty('gf.y', getProperty('gf.y') - mult[1] * elapsed)
	setProperty('gf.angle', getProperty('gf.angle') + mult[2] * elapsed)
	if getProperty('gf.x') <= -500 then
		reset()
	end
end

function reset()
	mult[0] = math.random(40, 80)
	mult[1] = math.random(-10, 10)
	mult[2] = math.random(-30, -10)
	setProperty('gf.x', originPos[0] + math.random(-40, 80) + 1400)
	setProperty('gf.y', originPos[1] + math.random(-120, 220))
end