
Player = {}

function Player:load()
   self.x = love.graphics.getWidth() / 2
   self.y = love.graphics.getHeight() / 2
   self.width = 50
   self.height = 50
   self.speed = 500
end



function Player:update(dt)
   self:move(dt)
end



function Player:move(dt)
   if love.keyboard.isDown("w") and not checkVerticalCollision(self, Machine) then
      self.y = self.y - self.speed * dt
   elseif love.keyboard.isDown("s") then
      self.y = self.y + self.speed * dt
   end
   if love.keyboard.isDown("a") then
      self.x = self.x - self.speed * dt
   elseif love.keyboard.isDown("d") then
      self.x = self.x + self.speed * dt
   end
end



function Player:draw()
   love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end