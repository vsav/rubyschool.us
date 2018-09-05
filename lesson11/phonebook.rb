phonebook = {}

while true
    puts 'Please enter name or press enter to print your phonebook: '
    name = gets.strip.capitalize
    if name == ""
        phonebook.each do |name, phone|
            puts "#{name} .... #{phone}"
        end
        break
    end
    puts 'Please enter phone number: '
    phone = gets.strip

    phonebook[name] = phone   
end