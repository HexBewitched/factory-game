
Machine = {}

function Machine:load()
    self.x = 0
    self.y = 0
    self.height = 50
    self.width = 50
end



function Machine:update(dt)

end



function Machine:draw()
    love.graphics.rectangle("line", self.x, self.y, self.width, self.height)
end