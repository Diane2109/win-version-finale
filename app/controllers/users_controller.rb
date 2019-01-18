class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :show, :destroy]

  def index
    @users = User.all
    current_user
   end

   def set_user
     @user = User.find(params[:id])
    end

  def new
    require_user
    @user = User.new
  end

  def create
    require_user
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Bonjour #{@user.first_name}, vous êtes bien un membre de l'équipe Winnovation."
      redirect_to users_path
    else
     render 'new'
    end
  end

  def edit
    require_user
    @user = User.find(params[:id])
  end

  def update
    require_user
    @user = User.find(params[:id])
    if @user.update(user_params)
     flash[:success] = "Nous avons bien mis à jour les informations concernant #{@user.first_name}."
     redirect_to users_path
    else
     render 'edit'
    end
   end

  def destroy
    require_user
    current_user
    if @current_user == @user
      then flash[:notice] = "Impossible de supprimer l'administrateur."
      redirect_to users_path
    else @user.destroy
      flash[:notice] = "#{@user.first_name} #{@user.last_name} a bien été supprimé."
      redirect_to users_path
    end
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :title, :description, :address, :email, :password, :profile_picture)
    end

end
