#Задание:
#Создать хэш англо-русский словарь с несколькими вариантами перевода одного слова
#При вводе слова на английском вывести количество его переводов и сами переводы


dict = {'cat' => ['кошка','кот'], 'volume' => ['громкость', 'том']} #создаем хэш

loop do
    print 'Please enter English word to translate: '
    english = gets.strip
    puts "There are #{dict[english].count} variants of #{english} in Russian: " # интерполяция сначала выводит количество переводов с помощью метода .count 
        dict[english].each_with_index do |word, index|  #переборка значений массива с индексами
            puts "#{index+1}. #{word}"  #index+1 чтобы вывод начинался с 1, а не с 0
        end
end
