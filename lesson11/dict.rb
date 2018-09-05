dict = {'dog' => 'собака', 'cat' => 'кошка', 'girl' => 'девушка'}
loop do
    puts 'Please enter English word: '
    english = gets.strip
    puts "#{english} is #{dict[english]} in Russian"
end
