def get_command
    actions = [:left, :right, :up, :down]
    x = rand(0..3) #от 0 потому что индексы массива начинаются с 0
    return actions[x]
end

command = get_command

puts "Получена команда: #{command}"

if command == :left
    puts "Робот едет влево"
elsif command == :right
    puts "Робот едет вправо"
elsif command == :up
    puts "Робот едет вверх"
elsif command == :down
    puts "Робот едет вниз"
end
