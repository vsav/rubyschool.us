numbers = (1..100).to_a
numbers.each do |number|
  if number%5==0 && number%3==0
    puts "#{number} FizzBuzz"
  elsif number%3==0
    puts "#{number} Fizz"
  elsif number%5==0
      puts "#{number} Buzz"
  else
    puts number
  end
end