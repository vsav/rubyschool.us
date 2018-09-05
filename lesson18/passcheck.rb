input = File.open('passwords.txt','r')

puts "Please enter your password"
pass = gets.strip

while (line = input.gets)
  line.strip!

  if line.include? pass
    puts "You are using weak password"
  exit
  end
end

  puts "You are using strong password"


input.close
