class DashboardController < ApplicationController
  
  def index
    @appointments = current_user.appointments
    render :index
  end
end
