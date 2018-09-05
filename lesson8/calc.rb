print "Input A: "
a = gets.chomp.to_i
print "Input B: "
b = gets.chomp.to_i
print "What to do? (+ - * /) "
action = gets.chomp

if action == "+"
  result = a + b
elsif action == "-"
  result = a - b
elsif action == "*"
  result = a * b
elsif action == "/" && b == 0
  puts "Error: division by 0"
  exit
elsif action == "/" && b != 0
  result = a / b
end

print "Result of #{a} #{action} #{b} is: "
puts result
