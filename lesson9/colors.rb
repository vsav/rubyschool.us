colors = []
color = ""
while color != "stop" do
print "Какой ваш любимый цвет?(введите stop чтобы закончить): "
color = gets.chomp
if color == "stop"
  print "Ваши любимые цвета: #{colors}"
  exit
end
colors << color
end
