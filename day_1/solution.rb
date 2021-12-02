
input = File.read('input.txt')
depths = input.split(' ').map(&:to_i)

depth_increase_counter = 0

(1..depths.length-1).each do |i|
  depth_increase_counter += 1 if depths[i] > depths[i-1]
end
puts depth_increase_counter

windowed_depth_increase_counter = 0

(3..depths.length-1).each do |i|
  windowed_depth_increase_counter += 1 if depths[i] > depths[i-3] 
end
puts windowed_depth_increase_counter
