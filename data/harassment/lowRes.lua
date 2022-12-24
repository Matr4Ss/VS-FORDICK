function onCreate()
if lowQuality then
loadSong('harassment-bad', 'Normal')

end
close(true)
end

function onUpdate()
if lowQuality then
setPropertyFromClass('ClientPrefs', 'framerate', 12)
end
end