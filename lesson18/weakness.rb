def is_password_weak?(pass) #! если функция называется is_ то есть возвращает true/false то в названии должен быть "?"

  input = File.open('passwords.txt','r')

  input.readlines.each do |line|
    line.strip!
    if line.include? pass
      return true
      break
    end
  end

  input.close

end


puts "Please enter your password"
pass = gets.strip

if is_password_weak?(pass)
  puts "weak"
else
  puts "strong"
end