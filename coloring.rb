require 'colored_grid'
require 'binary_tree'

6.times do |n|
  grid = ColoredGrid.new(25, 25)
  BinaryTree.on(grid)

  start = grid[grid.rows / 2, grid.columns / 2]

  grid.distances = start.distances

  filename = "tmp/colorized_%02d.png" % n
  grid.to_png.save(filename)
  puts "saved to #{filename}"
end
