--hudObj = {'healthBarBG', 'healthBar', 'scoreTxt', 'iconP1', 'iconP2', 'healthBarWN', 'healthStrips', 'timeTxt', 'timeBarBG', 'timeBar'}

function onUpdate()
	if not downScroll then
	for ass = 0, 3 do
		setPropertyFromGroup('opponentStrums', ass, 'direction', 360 - 90)
		setPropertyFromGroup('opponentStrums', ass, 'angle', 180)
--		setPropertyFromGroup('opponentStrums', ass, 'scale', 10)
		setPropertyFromGroup('opponentStrums', ass, 'y', 750)
--		setObjectCamera('opponentStrums'..ass, 'game')
--		setObjectOrder('opponentStrums'..ass, 1)
	end
	else
			for ass = 0, 3 do
		setPropertyFromGroup('opponentStrums', ass, 'y', -130)
		setPropertyFromGroup('opponentStrums', ass, 'direction', - 360 - 90)
		setPropertyFromGroup('opponentStrums', ass, 'angle', 180)
			end
	end
--[[	for hudObjCount = 1, 10 do
		setObjectCamera(hudObj[hudObjCount], 'game')
		setObjectOrder(hudObj[hudObjCount], 1)
	end]]--
end			

function onCreate()
	makeLuaSprite('UpperBar', 'empty', 0, 0)
	makeGraphic('UpperBar', 1280, 360, '000000')
	setObjectCamera('UpperBar', 'hud')
	addLuaSprite('UpperBar', false)

--[[	makeLuaSprite('ppp', 'empty', 0, getPropertyFromClass('lime.app.Application', 'current.window.y'))
	makeGraphic('ppp', 10, 10, 'ffffff')
	setObjectCamera('ppp', 'hud')
	addLuaSprite('ppp', false)]]--

	makeLuaSprite('LowerBar', 'empty', 0, 360)
	makeGraphic('LowerBar', 1280, 360, '000000')
	setObjectCamera('LowerBar', 'hud')
	addLuaSprite('LowerBar', false)
end

function onBeatHit()
	if curBeat == 1 then
	doTweenY('Cinematics1', 'UpperBar', -240 - 50, 7, 'circOut')
	doTweenY('Cinematics2', 'LowerBar', 600 + 50, 7, 'circOut')
end
end