actions = [:Rock, :Paper, :Scissors]
puts "Welcome!"
loop do
    print "Please select one of the following: (R)ock, (P)aper or (S)cissors and press Enter or type exit: "
    input = gets.strip.capitalize

    if input == 'R'
        user_choise = :Rock
    elsif input == "P"
        user_choise = :Paper
    elsif input == "S"
        user_choise = :Scissors
    elsif input == "Exit"
        exit
    end
    ai_choise = actions[rand(0..2)]

    results = [
        [:Rock, :Paper, :second_win],
        [:Rock, :Scissors, :first_win],
        [:Rock, :Rock, :Draw],
        [:Paper, :Rock, :first_win],
        [:Paper, :Scissors, :second_win],
        [:Paper, :Paper, :Draw],
        [:Scissors, :Rock, :second_win],
        [:Scissors, :Paper, :first_win],
        [:Scissors, :Scissors, :Draw]
    ]
    print "My choise was #{ai_choise} - "
    results.each do |variant|
        if user_choise == variant[0] && ai_choise == variant[1]
            if variant[2] == :second_win
                puts 'You lose!'
            elsif variant[2] == :first_win
                puts 'You win!'
            elsif variant[2] == :Draw
                puts 'Draw!'
            end
        end
    end
end