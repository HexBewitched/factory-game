
Map = {}

function Map:load()
    self.tileX = (love.graphics.getWidth() / 16)
    self.tileSizeWidth = love.graphics.getWidth() / 80
    self.tileY = (love.graphics.getHeight() / 16)
    self.tileSizeHeight = love.graphics.getHeight() / 45
    self.tileGrid = {}
end



function Map:update(dt)

end



function Map:draw()
    love.graphics.setColor(80, 80, 0)
    for x = 0, self.tileX do
        self.tileGrid[x] = {}
        
        for y = 2, self.tileY do
            self.tileGrid[x][y] = state, 0
            self.tileGrid[x][y] = resource, null
            love.graphics.rectangle("line", (x * self.tileSizeWidth), (y * self.tileSizeHeight), self.tileSizeWidth, self.tileSizeHeight)
        end
    end
end



