animToPlay = ''
obj = ''
function onEvent(name,value1,value2)
	if name == 'Object Play Anim' then
		animToPlay = value1
		obj = value2
		playAnim(obj, animToPlay)
	end
end
