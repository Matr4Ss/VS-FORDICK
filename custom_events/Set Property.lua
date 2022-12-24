function onEvent(name, value1, value2)
	if name == 'Set Property' then
		setProperty(value1, value2)
	end
end