class AppointmentsController < ApplicationController
  def new
    @pet = Pet.find(params[:pet_id])
    @appointment = Appointment.new
  end

  def create
    # if current_user.nil?
    #   session[:form_data] = params
    #   redirect_to new_user_registration_path
    # else
    @appointment = Appointment.new(appointment_params)
    @pet = Pet.find(params[:pet_id])
    @appointment.pet = @pet
    @appointment.user = current_user
    if @appointment.save
      puts "appointment saved sucessfully!"
      redirect_to dashboard_path
    else
      render :new
    end
    # end
  end

  private

  def appointment_params
    params
    .require(:appointment)
    .permit(:pet_id, :start_date_time, :end_date_time)
  end
  
end
