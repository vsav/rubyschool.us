names = []
loop do

  puts "Input name to add or press enter to exit: "
  add = gets.strip

  if add == ""
    break
  end
  names << add
end
  i = 1
  names.each do |name|
    puts "#{i} #{name}"
    i += 1
  end
