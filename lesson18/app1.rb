input = File.open('passwords.txt','r')
output = File.open('pwd6.txt', 'w')
puts "Passwords 6 symbols length"

while (line = input.gets)
  line.strip!
  if line.size == 6
    puts line
    output << line
  end
end

input.close
output.close