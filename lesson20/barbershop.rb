require 'sinatra'

get '/' do
  erb :index
end

post '/' do
  @title = "Thank you!"
  @name = params[:name]
  @phone = params[:phone]
  @date = params[:date]

  @message = "#{@name}, we'll be waiting for you at #{@date}"

  f = File.open('visits.txt', 'a')
  f.write "Name: #{@name}, Phone: #{@phone}, Visit date: #{@date} \n"
  f.close
  
  erb :welcome

end


