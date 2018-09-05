require 'sinatra'

get '/' do
  erb :index
end

post '/' do
  @login = params[:login] # index.erb
  @password = params[:password]

  if @login == 'admin' && @password == 'qwerty'
    return erb :welcome

  else
    @error = 'Access denied!'
    erb :index
  end
end
