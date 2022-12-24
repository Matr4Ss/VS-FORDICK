vol = 0.01
function onEvent(name,value1,value2)
	if name == 'Play Sound' then
		--[[if value2 == nil or value2 <= 0 then
			vol = 1
		else]]--
			vol = value2 / 100
		--end
		playSound(value1, vol)
	end
end
