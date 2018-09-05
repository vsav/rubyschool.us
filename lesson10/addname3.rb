@people = [] #определяем массив, в который будем записывать данные о человеке
# people[[mike, 55], [jake, 40]...]
@person = [] #определяем второй массив (подмассив), куда будем записывать (имя, возраст)


def add_item

  loop do

  puts "Input name or press enter to exit: "
  name = gets.strip

  puts "Input age or press enter to exit: "
  age = gets.strip

  if name == "" or age == ""
    break
  end

  person << name
  person << age
  people << person

  end
end

add_item

def print_items
  i = 1

  people.each do |man| #man - счетчик (до сих пор не понимаю этой записи)
    puts "#{i} #{man[0]} #{man[1]}"
    i += 1
  end
end

print_items
