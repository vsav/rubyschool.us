names = %w[walt hank jr jessie lidia]
while true  #бесконечный цикл
  i = 1
  names.each do |name|
    puts "#{i} #{name}"
    i += 1
  end

  puts
  print "Who you gonna kill (number)? "
  kill = gets.to_i
  puts
  puts "#{names[kill-1]} assassinated!"
  names.delete_at kill-1
  puts
end
