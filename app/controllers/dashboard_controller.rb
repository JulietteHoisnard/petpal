class DashboardController < ApplicationController
  
  def index
    @appointments = current_user.appointments
    @pets = current_user.pets
    render :index
  end

end
