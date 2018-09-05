def show_book book
    # выводит на экран записную книгу
    puts "==================================="
    book.keys.each do |key|
        age = book[key]
        puts "Name: #{key}, age: #{age}"
    end
    puts "==================================="
end
    book1 = {'Mike' => 65, 'Gus' => 50, 'Lidia' => 42}
    show_book book1

    book2 = {'Walt' => 50, 'Jessie' => 25}
    show_book book2

book = book1.merge book2 #если будет merge! то book1 перезапишется в объединенный массив

#Можно записать так:
book1.merge book2 #это будет эквивалентно merge! но нового хэша book не будет, т.к. они с book1 получаются идентичны
