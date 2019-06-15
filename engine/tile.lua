-- A Tile is a static object in the world, which can be used in a Tilemap
local Tile = {}
Tile.metatable = {__index = Tile}
Tile.layer = 1

function Tile.new()
  local t = {}

  setmetatable(t, Tile.metatable)
  return t
end

function Tile:setTexture(texture)
  self.texture = texture
end

function Tile:isWalkable()
  return true
end

function Tile:draw(graphics, x,y)
  if self.texture then
    graphics.draw(self.texture, x,y)
  end
end

function Tile:onWalkInto(world, x,y, ent)
end

return Tile