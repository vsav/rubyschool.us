x = 0
dict = {'cat' => ['кошка','кот'], 'volume' => ['громкость', 'том']}
dict.each_value do |value|
    puts "Value = #{value}"
    x = x + value.count   
end
puts "Count = #{x}"

#дальше 2 идентичных примера как проверить наличие КЛЮЧА в хэше

if dict.has_key? 'cat' #если есть ? то значение будет true or false
    puts "Yes!"
end

if dict['cat'] #если есть элемент, то результат будет не nil и соответственно true
    puts "and Yes!"
end