names = %w[Mike Jessie Hank Walt]

names.each_with_index do |name, number|
    puts "#{number + 1}. #{name}" #+1 чтобы номера выводились не с 0, а с 1
end