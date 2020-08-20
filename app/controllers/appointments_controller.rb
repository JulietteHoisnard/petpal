class AppointmentsController < ApplicationController
  skip_before_action :authenticate_user!, only: :create

  def new
    @pet = Pet.find(params[:pet_id])
    @appointment = Appointment.new
    # if session[:form_data]
    #   params = session[:form_data]
    #   session[:form_data] = nil
    #   @appointment = Appointment.new(appointment_params)
    #   raise
    # end
  end

  def create
    if current_user.nil?
      # session[:form_data] = params
      session[:pet_id] = params[:pet_id]
      redirect_to new_user_session_path, notice: "You must be signed in to access this page." 
    else
      @appointment = Appointment.new(appointment_params)
      @pet = Pet.find(params[:pet_id])
      @appointment.pet = @pet
      @appointment.user = current_user
      if @appointment.save
        redirect_to dashboard_path
      else
        render :new
      end
    end
  end

  private

  def appointment_params
    params
    .require(:appointment)
    .permit(:pet_id, :start_date_time, :end_date_time)
  end
  
end
