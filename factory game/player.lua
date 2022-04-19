
Player = {}

function Player:load()
   self.x = love.graphics.getWidth() / 2
   self.y = love.graphics.getHeight() / 2 + (tileHeight / 2)
   self.width = tileWidth
   self.height = tileHeight
   self.xPos = (love.graphics.getWidth() / tileWidth) / 2
   self.yPos = ((love.graphics.getHeight() / tileHeight) / 2) - 0.5
   self.currentTime = 0
   self.timeLength = 0.1
   self.currentBuildTime = 0
   self.buildTimeLength = 0.2
   self.building = false
   self.buildThing = 1
   self.buildFace = "up"
   self.buildList = { "conveyor belt", "ore gathering", "stone gathering", "wood gathering", "storage container", "basic crafter", "advanced crafter", "research facility", "inserter", "fluid gathering", "liquid refiner", "rocket ship" }
end



function Player:update(dt)
   self:move(dt)
   self.currentBuildTime = self.currentBuildTime + 1 * dt
   self:buildMode(dt)
   self.currentTime = self.currentTime + 1 * dt

   if love.keyboard.isDown("escape") then
      love.event.quit()
   end
end



function Player:move(dt)
   if self:movement()then
      if not self.building then
         if love.keyboard.isDown("w") and not (self.y == (tileHeight * 2)) then
            self.y = self.y - tileWidth
            self.yPos = self.yPos + 1
         elseif love.keyboard.isDown("s") and not ((self.y + self.height) == love.graphics.getHeight()) then
            self.y = self.y + tileWidth
            self.yPos = self.yPos - 1
         end
         if love.keyboard.isDown("a") and not (self.x == 0) then
            self.x = self.x - tileHeight
            self.xPos = self.xPos - 1
         elseif love.keyboard.isDown("d") and not ((self.x + self.width) == love.graphics.getWidth()) then
            self.x = self.x + tileHeight
            self.xPos = self.xPos + 1
         end
      end
      if love.keyboard.isDown("e") then
         self.building = not (self.building)
      end
   end
end



function Player:buildMode(dt)
   if self.building then
      if self:buildDelay() then
         if love.keyboard.isDown("1") then
            print(self.buildList[1])
            self.buildThing = 1
         elseif love.keyboard.isDown("2") then
            print(self.buildList[2])
            self.buildThing = 2
         elseif love.keyboard.isDown("3") then
            print(self.buildList[3])
            self.buildThing = 3
         elseif love.keyboard.isDown("4") then
            print(self.buildList[4])
            self.buildThing = 4
         elseif love.keyboard.isDown("5") then
            print(self.buildList[5])
            self.buildThing = 5
         elseif love.keyboard.isDown("6") then
            print(self.buildList[6])
            self.buildThing = 6
         elseif love.keyboard.isDown("7") then
            print(self.buildList[7])
            self.buildThing = 7
         elseif love.keyboard.isDown("8") then
            print(self.buildList[8])
            self.buildThing = 8
         elseif love.keyboard.isDown("9") then
            print(self.buildList[9])
            self.buildThing = 9
         elseif love.keyboard.isDown("0") then
            print(self.buildList[10])
            self.buildThing = 10
         elseif love.keyboard.isDown("-") then
            print(self.buildList[11])
            self.buildThing = 11
         elseif love.keyboard.isDown("=") then
            print(self.buildList[12])
            self.buildThing = 12
         end
      end


      if love.keyboard.isDown("f") and self.building then
         if self.buildFace == "up" then
            print("test")
            self.buildPosX = self.yPos
            self.buildPosY = self.xPos + 1
            initMachine(self, Map)
         end
      end



   end
end



function Player:buildDelay()
   if self.currentBuildTime >= self.buildTimeLength then
      self.currentBuildTime = 0
      return true
   else
      return false
   end
end



function Player:movement()
   if self.currentTime >= self.timeLength then
      self.currentTime = 0
      return true
   else
      return false
   end
end



function Player:draw()
   love.graphics.setColor(255, 0, 0)
   love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)


   
   if self.building then
      love.graphics.setColor(255, 255, 255)
      love.graphics.rectangle('fill',0 ,0, tileWidth * 2, tileHeight * 2)
   else
      love.graphics.setColor(255, 255, 0)
      love.graphics.rectangle('fill',0 ,0, tileWidth * 2, tileHeight * 2)
   end



   if self.building then
      if love.keyboard.isDown("w") then
         love.graphics.setColor(100, 0, 100)
         love.graphics.rectangle('fill',tileWidth * 3, 0, tileWidth, tileHeight)
      else
         love.graphics.setColor(255, 255, 255)
         love.graphics.rectangle('line', tileWidth * 3, 0, tileWidth, tileHeight)
      end
      if love.keyboard.isDown("a") then
         love.graphics.setColor(100, 0, 100)
         love.graphics.rectangle('fill',tileWidth * 2, 0, tileWidth, tileHeight * 2)
      else
         love.graphics.setColor(255, 255, 255)
         love.graphics.rectangle('line', tileWidth * 2, 0, tileWidth, tileHeight * 2)
      end
      if love.keyboard.isDown("s") then
         love.graphics.setColor(100, 0, 100)
         love.graphics.rectangle('fill',tileWidth * 3, tileHeight, tileWidth, tileHeight)
      else
         love.graphics.setColor(255, 255, 255)
         love.graphics.rectangle('line', tileWidth * 3, tileHeight, tileWidth, tileHeight)
      end
      if love.keyboard.isDown("d") then
         love.graphics.setColor(100, 0, 100)
         love.graphics.rectangle('fill',tileWidth * 4, 0, tileWidth, tileHeight * 2)
      else
         love.graphics.setColor(255, 255, 255)
         love.graphics.rectangle('line', tileWidth * 4, 0, tileWidth, tileHeight * 2)
      end
   else
      love.graphics.setColor(255, 255, 255)
      love.graphics.rectangle('line', tileWidth * 2, 0, tileWidth, tileHeight * 2)
      love.graphics.setColor(255, 255, 255)
      love.graphics.rectangle('line', tileWidth * 3, 0, tileWidth, tileHeight)
      love.graphics.setColor(255, 255, 255)
      love.graphics.rectangle('line', tileWidth * 3, tileWidth, tileWidth, tileHeight)
      love.graphics.setColor(255, 255, 255)
      love.graphics.rectangle('line', tileWidth * 4, 0, tileWidth, tileHeight * 2)
   end
end