function onCreatePost()
	defY = getProperty('iconP2.y')
end
function onUpdatePost()
	local angleOfs = math.random(-3, 3)
	local posXOfs = math.random(-2, 2)
	local posYOfs = math.random(-2, 2)
	if getProperty('healthBar.percent') > 80 then
		setProperty('iconP2.angle', angleOfs)
		setProperty('iconP2.x', getProperty('iconP2.x') + posXOfs)
		setProperty('iconP2.y', defY + posYOfs)
	else
		setProperty('iconP2.angle', 0)
	end
end