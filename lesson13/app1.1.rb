@hh = {}

def add_person options #заменяем переменные на хэш options
#добавляет пару в хэш
    puts "Already exists!" if @hh[options[:name]]
    @hh[options[:name]] = options[:age]
end

def show_hash
#показывает хэш
    @hh.keys.each do |key|
        age = @hh[key]
        puts "Name: #{key}, age: #{age}"
    end
end

loop do
#добавлять пока не введена пустая строка
    print "Please enter name or press enter to exit: "
    name = gets.strip.capitalize
    if name == ""
        show_hash
        break
    end
    print "Please enter age: "
    age = gets.strip
    options = {:name => name, :age => age}
    add_person options
end