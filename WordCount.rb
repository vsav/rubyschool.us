f = File.open 'file.txt', 'r'

@hh = {}

def add_to_hash word
  if !word.empty?
    word.downcase!
    # тут какой-то костыль, не могу понять как работает
    cnt = @hh[word].to_i
    cnt+=1
    @hh[word]=cnt
  end
end




f.each_line do |line|
  arr = line.split(/\s|\n|\.|,/) #разбиваем строки на слова
  arr.each do |word|
    add_to_hash(word)

  end
end

f.close

puts @hh.inspect

@hh.each do |key,value|
  puts "#{value} #{key}"
end

