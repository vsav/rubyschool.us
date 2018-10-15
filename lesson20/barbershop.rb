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

get '/admin' do
  @logfile = File.read("visits.txt") #не работает
  erb :admin
  @logfile.close
end

post '/admin' do
  @admin = params[:admin]
  @password = params[:password]
  if @admin == "asd" && @password == "asd"
    erb :admin
  else
    @error = "Access denied!"
    erb :index
  end
end

