def get_command
  arrActions =[:left, :right, :up, :down]
  x = rand(0..3)
  return arrActions[x]
end
  command = get_command
  puts "I got #{command} command"
  #if command
      puts "Going #{command}"
  #end
