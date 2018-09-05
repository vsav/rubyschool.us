input = File.open("task.txt", "r")
total = 0
half = 0
str = 1
while (line = input.gets) #цикл перебирает строки до конца файла
    puts line
    numbers = line.split(",") #разбиваем строку и создаем из ее слов массив
    value = numbers[1].to_i #берем каждый второй элемент каждого массива, который число, и преобразуем в целое
    total += value
    if str == 6
      half = total
    end
    str+=1
end

puts "Total: #{total}"
puts "6 months: #{half}"

input.close