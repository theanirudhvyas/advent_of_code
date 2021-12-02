input = File.readlines('input', chomp: true)
Command = Struct.new(:direction, :value)
data = input.map { |entry| Command.new(*entry.split(" "))}

horizontal_position = 0
depth_position = 0

data.each do |command|
  case command.direction
  when 'forward'
    horizontal_position += command.value.to_i
  when 'up'
    depth_position -= command.value.to_i
  when 'down'
    depth_position += command.value.to_i
  end
end

puts depth_position * horizontal_position
