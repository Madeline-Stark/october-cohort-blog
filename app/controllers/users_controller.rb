class UsersController < ApplicationController
  
  get '/signup' do #new
    erb :"users/signup"
  end
  
  post '/signup' do #create
    #check if username already exists
    if !User.find_by(user_name: params[:user_name])
      @user = User.new(params)
      if @user.save 
        #go to index 
      end
    end
    #create a user
    
  end
  
end