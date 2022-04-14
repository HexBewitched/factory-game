require('player')
require('machine')
require('map')



function love.load()
   Player:load()
   Machine:load()
   Map:load()
end



function love.update(dt)
   Player:update(dt)
   Machine:update(dt)
   Map:update(dt)
end



function love.draw()
   Player:draw()
   Machine:draw()
   Map:draw()
end



function buildMode()
   
end
