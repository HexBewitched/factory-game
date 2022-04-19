require('player')
require('machine')
require('map')



tileHeight = love.graphics.getHeight() / 45
tileWidth = love.graphics.getWidth() / 80



function love.load()
   Player:load()
   Map:load()
end



function love.update(dt)
   Player:update(dt)
   Map:update(dt)
end



function love.draw()
   Player:draw()
   Map:draw()
end



function initMachine(advanced, b)
   a.buildThing
   b.tileGrid[buildPosX][buildPosY] = state, a.buildThing
end



function checkUp(a, b)
   nextYPos = a.yPos + 1 
   nextXPos = a.xPos
   if b.tileGrid[nextXPos][nextYPos] == true then
      return false
   else
      return true
   end
end



function wait(time)
   os.execute("sleep " .. tonumber(time))
 end