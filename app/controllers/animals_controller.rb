class AnimalsController < ApplicationController

  ### ANIMALS INDEX ACTION ###

  get '/animals' do
    erb :'animals/index'
  end

  ### CREATE ACTIONS ###

  get '/animals/new' do
    if !logged_in?
      redirect '/signup'
    else
      erb :'animals/new'
    end
  end

  post '/animals' do

  end

end