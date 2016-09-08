class UsersController < ApplicationController

  get '/signup' do
    if !session[:user_id]
      erb :'users/signup'
    else
      binding.pry
    end
  end

  post '/signup' do
    if params[:name] == "" || params[:email] == "" || params[:password] == ""
      redirect '/signup'
    else
      user = User.create(params)
      session[:user_id] = user.id
      redirect '/'
    end
  end

end