class ProfileController < ApplicationController
  def index
    @user = current_user
    @pets = current_user.pets
    render :index
  end
end
