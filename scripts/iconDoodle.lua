local a = 123123123123
--flip = true

-- thx PurSnake <3
function onUpdate(elapsed)

    if getProperty('playbackRate') ~= nil then
        setProperty("iconP1.angle", lerp(0, getProperty('iconP1.angle'), 1 - (elapsed * 3.125 * getProperty('playbackRate'))))
        setProperty("iconP2.angle", lerp(0, getProperty('iconP2.angle'), 1 - (elapsed * 3.125 * getProperty('playbackRate'))))
    else
        setProperty("iconP1.angle", lerp(0, getProperty('iconP1.angle'), 1 - (elapsed * 3.125)))
        setProperty("iconP2.angle", lerp(0, getProperty('iconP2.angle'), 1 - (elapsed * 3.125)))
    end

end


function onBeatHit()
	a = 8
	if curBeat % 2 == 0 then
		a = -8
	end
--flip = not flip

setProperty('iconP2.angle',-a)
setProperty('iconP1.angle',a)

--setProperty('iconP1.flipX',flip)
--setProperty('iconP2.flipX',flip)

end

function lerp(a,b,t) return a * (1-t) + b * t end