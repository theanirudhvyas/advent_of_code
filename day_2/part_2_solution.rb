input = File.readlines('input', chomp: true)
Command = Struct.new(:direction, :value)
data = input.map { |entry| Command.new(*entry.split(" "))}

horizontal_position = 0
aim = 0
depth_position = 0

data.each do |command|
  case command.direction
  when 'forward'
    horizontal_position += command.value.to_i
    depth_position += command.value.to_i * aim
  when 'up'
    aim -= command.value.to_i
  when 'down'
    aim += command.value.to_i
  end
end

puts "answer: " + (horizontal_position * depth_position).to_s
