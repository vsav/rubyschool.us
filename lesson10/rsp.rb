game = [:Rock, :Scissors, :Paper]
puts "Welcome to 'Rock, Scissors, Paper' game!"
puts
loop do
print "Choose one of the following: (R)ock, (S)cissors or (P)aper: "
  input = gets.strip.capitalize
  ai_choise = game[rand(0..2)]

  if input == "R"
    user_choise = :Rock
  elsif input == "S"
    user_choise = :Scissors
  elsif input == "P"
    user_choise = :Paper
  else
    puts "Wrong input. Please try again: "
  break
  end

  print "My choise was: #{ai_choise} - "
  if user_choise == ai_choise
    puts "Draw!"
  elsif user_choise == :Rock && ai_choise == :Scissors
    puts "You won!"
  elsif user_choise == :Rock && ai_choise == :Paper
    puts "You loose!"
  elsif user_choise == :Scissors && ai_choise == :Paper
    puts "You won!"
  elsif user_choise == :Scissors && ai_choise == :Rock
    puts "You loose!"
  elsif user_choise == :Paper && ai_choise == :Rock
    puts "You won!"
  elsif user_choise == :Paper && ai_choise == :Scissors
    puts "You loose!"
  end
end
§§