people = [] #определяем массив, в который будем записывать данные о человеке
# people[[mike, 55], [jake, 40]...]

def add_item
  person = [] #определяем второй массив (подмассив), куда будем записывать (имя, возраст)
  puts "Input name or press enter to exit: "
  name = gets.strip

  if name == ""
    break
  end
    person << name

  puts "Input age or press enter to exit: "
  age = gets.strip

  if age == ""
    break
  end
  person << age
  people << person
end

loop do
  add_item
end

def print_items
  i = 1

  people.each do |man| #man - счетчик (до сих пор не понимаю этой записи)
    puts "#{i} #{man[0]} #{man[1]}"
    i += 1
  end
end

print_items
