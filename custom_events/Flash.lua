color = 'FFFFFF'
duration = 2.0
function onEvent(name,value1,value2)
	if name == 'Flash' then
		if not value1 == nil or not value1 == '' then
			color = value1
		end
		if not value2 == nil or not value2 == '' then
			duration = value2
		end
		cameraFlash('camGame', color, duration, true)
	end
end