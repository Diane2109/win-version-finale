class SessionsController < ApplicationController
  def index
  end

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
     session[:user_id] = user.id
     flash[:success] = "Vous êtes connecté.e."
     redirect_to users_path(user)
    else
     flash.now[:danger] = "Oups, une erreur s'est produite !"
     render 'new'
    end
   end

   def destroy
     session[:user_id] = nil
     flash[:success] = "Vous vous êtes déconnecté.e."
     redirect_to root_path
    end
end
