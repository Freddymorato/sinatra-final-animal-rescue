class AnimalsController < ApplicationController

  ### ANIMALS INDEX ACTION ###

  get '/animals' do
    erb :'animals/index'
  end

  ### CREATE ACTIONS ###

  get '/animals/new' do
    "new animals"
  end

  post '/animals' do

  end

end