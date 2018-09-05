names = ["walt", "hank", "jr", "jessie", "lidia"] #при такой записи цифры в массиве будут целыми
#arr = %w[walt hank jr jessie lidia] #при такой записи все элементы строковые
#arr[1..3] - выборка элементов со 2 по 4
i = 0
names[2].capitalize! #! нужен для присвоения переменной нового значения
names.each do |name|

    puts "#{i} #{name}"
    i += 1
end
