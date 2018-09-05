game = [:Rock, :Scissors, :Paper]
puts "Welcome to 'Rock, Scissors, Paper' game!"
puts
loop do
  #Выбор пользователя
  print "Choose one of the following: (R)ock, (S)cissors or (P)aper: "
    input = gets.strip.capitalize
  if input == "R"
    user_choise = :Rock
  elsif input == "S"
    user_choise = :Scissors
  elsif input == "P"
    user_choise = :Paper
  else print "Choose one of the following: (R)ock, (S)cissors or (P)aper: "
    exit
  end
  #Выбор компьютера
    ai_choise = game[rand(0..2)]
  
  # Матрица комбинаций в виде двумерного массива
  # каждый элемент в массиве cases будет ещё одним массивом,
  # в котором будут данные в следующем формате:
  #
  # 1-ый выбор | 2-ой выбор | результат
  
  cases = [
    [:Rock, :Paper, :second_win],
    [:Rock, :Scissors, :first_win],
    [:Rock, :Rock, :draw],
    [:Paper, :Rock, :first_win],
    [:Paper, :Scissors, :second_win],
    [:Paper, :Paper, :draw],
    [:Scissors, :Rock, :second_win],
    [:Scissors, :Paper, :first_win],
    [:Scissors, :Scissors, :draw]
  ]

  print "My choise was: #{ai_choise} - "

  cases.each do |choise|

  #  puts "Wrong input. Please try again: "
  #  break
  #  end

     if choise[0] == user_choise && choise[1] == ai_choise
       if choise[2] == :first_win
         puts "You win!"
       elsif choise[2] == :second_win
         puts "I win!"
       elsif choise[2] == :draw
         puts "Draw!"
       end
     end
  end
end