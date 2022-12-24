function onCreatePost()
if lowQuality then
makeLuaSprite('4k','lowRes_UI/d79b1be01ed76742')
setObjectCamera('4k','camOther')
scaleObject('4k',1.8,1.0)
setProperty('4k.x',screenWidth-getProperty('4k.width'))
setProperty('4k.y',screenHeight-getProperty('4k.height'))
addLuaSprite('4k')
makeLuaSprite('rus','lowRes_UI/full_russian_translation')
setObjectCamera('rus','camOther')
scaleObject('rus',0.8,0.6)
setProperty('rus.x',screenWidth-getProperty('rus.width'))
addLuaSprite('rus')
makeLuaSprite('shitaClip','lowRes_UI/shit',30)
scaleObject('shitaClip',0.65,0.5)
setProperty('shitaClip.y',screenHeight-getProperty('shitaClip.height')-30)
setObjectCamera('shitaClip','camOther')
addLuaSprite('shitaClip')
if botPlay then
makeLuaSprite('cum','lowRes_UI/hypercam')
scaleObject('cum',0.5,0.25)
setObjectCamera('cum','camOther')
screenCenter('cum','x')
addLuaSprite('cum')
setProperty('botplayTxt.visible',false)
end
end
close(true)
end