require 'grid'
require 'sidewinder'

grid = Grid.new(10, 10)
Sidewinder.on(grid)

puts grid

img = grid.to_png
img.save "tmp/sidewinder.png"
