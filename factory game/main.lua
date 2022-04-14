require('player')
require('machine')

function love.load()
   Player:load()
   Machine:load()
end


function love.update(dt)
   Player:update(dt)
   Machine:update(dt)
end


function love.draw()
   Player:draw()
   Machine:draw()
end


function checkVerticalCollision(a, b)
   if a.y < b.y + b.height and (b.x + b.height > a.x > b.x or b.x + b.height > a.x + a.height > b.x) then
      return true
   else
      return false
   end
end
