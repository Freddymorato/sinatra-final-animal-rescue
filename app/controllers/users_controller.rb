require 'rack-flash'

class UsersController < ApplicationController
  use Rack::Flash

  get '/signup' do
    if !session[:user_id]
      erb :'users/signup'
    else
      redirect '/'
    end
  end

  post '/signup' do
    if params[:name] == "" || params[:email] == "" || params[:password] == ""
      redirect '/signup'
    else
      user = User.create(params)
      session[:user_id] = user.id
      flash[:success] = "You have successfully signed up!"
      redirect '/'
    end
  end

  get '/login' do
    if !logged_in?
      erb :'users/login'
    else
      redirect '/'
    end
  end

  post '/login' do
    user = User.find_by(name: params[:name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "You have successfully signed in!"
      redirect '/'
    else
      redirect '/signup'
    end
  end

  get '/logout' do
    if logged_in?
      session.destroy
      flash[:success] = "You have logged out!"
      redirect '/'
    else
      redirect '/'
    end
  end

end