function onCreate()
		makeLuaSprite('fordick aaah', '', -500, -500)
		luaSpriteMakeGraphic('fordick aaah', 1280, 720, '0xFF18191C')
		setLuaSpriteScrollFactor('fordick aaah', 1, 1)
		scaleObject('fordick aaah', 3, 3)
		
		makeLuaSprite('fordick goofy ah', 'bgs/buttons_discord', 455, 801)
		setLuaSpriteScrollFactor('fordick goofy ah', 1, 1)
		scaleObject('fordick goofy ah', 1, 1)
		
		addLuaSprite('fordick aaah', false)
		addLuaSprite('fordick goofy ah', false)
	close(true)
end
