
Map = {}

function Map:load()
    self.tileX = love.graphics.getWidth() / 16
    self.tileSizeWidth = love.graphics.getWidth() / 80
    self.tileY = love.graphics.getHeight() / 16
    self.tileSizeHeight = love.graphics.getHeight() / 45
    self.tileGrid = {}
end



function Map:update(dt)

end



function Map:draw()
    for x = 1, tileX do
        tileGrid[x] = {}
        
        for y = 1, tileY do
            tileGrid[x][y] = love.graphics.rectangle("line", x, y, tileSizeWidth, tileSizeHeight)
        end
    end
end



function Map:GetPos()

end