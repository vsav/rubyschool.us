add10 = lambda {|x| return x + 10}
add20 = lambda {|x| return x + 20}
sub5 = lambda {|x| return x - 5}

a = add10.call 300 #ключевое слово call вызывает выражение, x - передаваемый параметр
b = add20.call 220
c = sub5.call 305

#puts a
#puts b
#puts c

balance = 1000

combinations = {111 => add10, 222 => add10, 333 =>add10, 444 => add20, 555 => add20, 666 => sub5, 777 => add20, 888 =>sub5, 999 =>sub5 }

loop do
  turn = rand(100..999)
  puts "Your combination: #{turn}"
    if combinations[turn] #проверяем выпавшую комбинацию, соответствует ли она нужным 111,222 и т.д.
      a = combinations[turn] #записываем в переменную а значение, соответствующее выпавшему ключу (add10, add20, sub5)
      balance = a.call balance #вызываем соответствующую лямбду, чтобы произвести вычисления новой суммы баланса
      puts "lambda called!"
    end
    puts "Your balance is: #{balance}"
    puts "Press Enter to continue..."
    gets
end
