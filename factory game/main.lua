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
   if a.y < b.y + b.height and (a.x < b.x < a.width or a.x > b.x < b.width) or a.y + a.height > b.y and (a.x < b.x < a.width or a.x > b.x < b.width) then
      return true
   else
      return false
   end
end
