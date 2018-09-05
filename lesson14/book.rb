class Book

    def initialize
        @hh = {}
    end
    def add_person name, age
    #добавляет пару в хэш
        puts "Already exists!" if @hh[name]
        @hh[name] = age
    end

    def show_hash
    #показывает хэш
        @hh.keys.each do |key|
            age = @hh[key]
            puts "Name: #{key}, age: #{age}"
        end
    end
    
    def show_last
        puts "Last added person was: #{@hh.keys.last}" #выводит последний добавленный ключß
    end
end

b = Book.new

loop do
#добавлять пока не введена пустая строка
    print "Please enter name or press enter to exit: "
    name = gets.strip.capitalize
    if name == ""
        b.show_hash
        break
    end
    print "Please enter age: "
    age = gets.strip
    b.add_person name, age
end

b.show_last