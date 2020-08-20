class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @pets = @user.pets
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user == current_user
      @user.update(user_params)
      redirect_to user_path(@user)
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :bio, :username, :photo)
  end


end
