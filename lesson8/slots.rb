x = 0
y = 0
z = 0
money = 100
spin = "Y"
while spin != "N" do
print "You have #{money}$. Spin? (y/n)"
spin = gets.strip.capitalize

  if spin == "Y"
    x = rand(0..9)
    y = rand(0..9)
    z = rand(0..9)
    print "#{x} #{y} #{z} \n"

    if x == y && y == z
      money += 50
      print "You won 50$! \n"

    elsif x == y || y == z || x == z
      money += 25
      print "You won 25$! \n"

    else
      money -= 10
      print "oooh, you loose 10$ :( \n"

    end

  elsif spin == "N"
    print "see ya!"
    spin = "N"
  else
    print "\"y\" or \"n\" please. "
  end

end
