require 'sinatra/base'

class Chitter < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/users/new' do
    erb :sign_up
  end

  post '/users' do
    # User.create(params[:email], params[:first_name], params[last_name], params[:password])
    redirect '/'

  end

  run! if app_file == $0
end