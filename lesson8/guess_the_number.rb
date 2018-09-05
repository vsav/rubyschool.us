number = rand(1..100)
answer = 0
attempt = 1
print "Can You guess the number from 1 to 100? (Attempt #{attempt}) "

while answer != number do

answer = gets.to_i
attempt += 1
  case
    when answer < number
      print "No, greater, try again (Attempt #{attempt}): "
    when answer > number
      print "No, lesser, try again (Attempt #{attempt}): "
    when answer == number
      attempt -= 1
      puts "You got it! You need #{attempt} attempts"
      break
  end

end
