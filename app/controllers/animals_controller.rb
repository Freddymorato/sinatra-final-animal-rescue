class AnimalsController < ApplicationController

  get '/animals' do
    erb :'animals/index'
  end

end