class AppointmentsController < ApplicationController
  def new
    @pet = Pet.find(params[:pet_id])
    # @pet = Pet.find(1)
    @appointment = Appointment.new
  end

  def create
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
  end

  private

  def appointment_params
    params
    .require(:appointment)
    .permit(:pet_id, :start_date_time, :end_date_time)
  end
  
end
