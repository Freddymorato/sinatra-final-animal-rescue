class SheltersController < ApplicationController

  ## SHELTERS INDEX ACTION ##

  get '/shelters' do
    erb :'shelters/index'
  end

  ## CREATE ACTIONS ##

  get '/shelters/new' do
    if !logged_in?
      flash[:error] = "You need to log in to do that."
      redirect '/login'
    else
      erb :'shelters/new'
    end
  end

  post '/shelters' do
    if params[:name] == "" ||
       params[:address] == "" ||
       params[:city] == "" ||
       params[:state] == ""
      redirect '/shelters/new'
    else
      shelter = current_user.shelters.create(params)
      flash[:success] = "You have successfully added #{shelter.name}."
      redirect "/shelters/#{shelter.id}"
    end
  end

  ## SHOW/READ ACTION ##

  get '/shelters/:id' do # maybe do this by slug later instead?
    @shelter = Shelter.find(params[:id])
    erb :'shelters/show'
  end

  ## EDIT ACTIONS ##

  get '/shelters/:id/edit' do
    if logged_in?
      @shelter = Shelter.find(params[:id])
      if @shelter.user_id == current_user.id
        erb :'shelters/edit'
      else
        redirect '/shelters'
      end
    else
      redirect '/login'
    end
  end

  patch '/shelters/:id' do
    @shelter = Shelter.find(params[:id])
    @shelter.update(name: params[:name], address: params[:address], city: params[:city], state: params[:state])
    flash[:success] = "You have successfully edited #{@shelter.name}"
    redirect "/shelters/#{@shelter.id}"
  end



end









