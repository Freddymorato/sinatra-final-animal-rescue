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
    if params[:name] == "" ||
       params[:species] == "" ||
       params[:breed] == "" ||
       params[:age] == ""
      redirect '/animals/new'
    else
      animal = Animal.create(params["animal"])
      redirect "/animals/#{animal.id}"
    end
  end

  ## SHOW/READ ACTION ##

  get '/animals/:id' do
    @animal = Animal.find(params[:id])
    erb :'animals/show'
  end

end