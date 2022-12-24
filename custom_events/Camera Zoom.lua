camzoomease = 0
camzoominout = 0
tweenActive = false

function onEvent(name, value1, value2)
   if name == 'Camera Zoom' then
      zoomsussy = tonumber(value1)
      durationsussy = tonumber(value2)

      doTweenZoom('sussybakaZoom', 'camGame', zoomsussy, durationsussy, easesussy)

      --tweenActive = true
   end

   if name == 'Camera Zoom Ease' then
      camzoomease = tonumber(value1)
      camzoominout = tonumber(value2)

      if camzoomease == 1 then
         if camzoominout == 0 then
            easesussy = 'cubeOut'
         end

         if camzoominout == 1 then
            easesussy = 'cubeIn'
         end

         if camzoominout == 2 then
            easesussy = 'cubeInOut'
         end
      end
          
      if camzoomease == 2 then
         if camzoominout == 0 then
            easesussy = 'circOut'
         end

         if camzoominout == 1 then
            easesussy = 'circIn'
         end

         if camzoominout == 2 then
            easesussy = 'circInOut'
         end
      end

      if camzoomease == 3 then
         if camzoominout == 0 then
            easesussy = 'backOut'
         end

         if camzoominout == 1 then
            easesussy = 'backIn'
         end

         if camzoominout == 2 then
            easesussy = 'backInOut'
         end
      end

      if camzoomease == 4 then
         if camzoominout == 0 then
            easesussy = 'bounceOut'
         end

         if camzoominout == 1 then
            easesussy = 'bounceIn'
         end

         if camzoominout == 2 then
            easesussy = 'bounceInOut'
         end
      end

      if camzoomease == 5 then
         if camzoominout == 0 then
            easesussy = 'elasticOut'
         end

         if camzoominout == 1 then
            easesussy = 'elasticIn'
         end

         if camzoominout == 2 then
            easesussy = 'elasticInOut'
         end
      end
      if camzoomease == 6 then -- rich: ТЫ ЗАБЫЛ quadIn/Out/InOut ДУРАЧОК!!!
         if camzoominout == 0 then
            easesussy = 'quadOut'
         end

         if camzoominout == 1 then
            easesussy = 'quadIn'
         end

         if camzoominout == 2 then
            easesussy = 'quadInOut'
         end
      end

      if camzoomease == 0 then
         easesussy = 'linear' 
      end

      if camzoomease >= 7 then
         easesussy = 'linear' 
      end
   end
end

function onTweenCompleted(tag, loops, loopsLeft)
   if tag == 'sussybakaZoom' then
      setProperty('defaultCamZoom', zoomsussy)
      --tweenActive = false
   end
end