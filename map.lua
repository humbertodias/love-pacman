
local function getMaps()
  
  local map = {}
  --readFile
  --local contents = love.filesystem.read( 'assets/level.map')
  local iterator = love.filesystem.lines( 'assets/level.map' )
  
  local rowN = 1
  for line in iterator do
    map[rowN] = {}
    for i=1,#line do
      table.insert(map[rowN], tonumber(line:sub(i,i)))
    end
    rowN = rowN+1
  end
  
  --local contents = love.filesystem.read( 'assets/obstacle.map')
  local iterator = love.filesystem.lines( 'assets/obstacle.map' )
  
  local obstacle = {}
  
  
   rowN = 1
  for line in iterator do
    obstacle[rowN] = {}
    for i=1,#line do
      table.insert(obstacle[rowN], tonumber(line:sub(i,i)))
    end
    rowN = rowN+1
  end
  
  --local contents = love.filesystem.read( 'assets/collectable.map')
  local iterator = love.filesystem.lines( 'assets/collectable.map' )
  
  local collectable = {}
  local fruits = {}
  
   rowN = 1
  for line in iterator do
    collectable[rowN] = {}
    fruits[rowN] = {}
    for i=1,#line do
      table.insert(collectable[rowN], tonumber(line:sub(i,i)))
      table.insert(fruits[rowN], 0)
    end
    rowN = rowN+1
  end
  
  return map,obstacle,collectable,fruits
end

return getMaps