require 'distance_grid'
require 'binary_tree'

grid = DistanceGrid.new(5, 5)
BinaryTree.on(grid)

start = grid[0,0]

distances = start.distances
new_start, distance = distances.max

grid.distances = distances.path_to(new_start)
puts "Here's things after the first pass:\n"
puts grid

new_distances = new_start.distances
goal, distance = new_distances.max

grid.distances = new_distances.path_to(goal)
puts "And the now after the second pass (longest path):\n"
puts grid
