class AppointmentsController < ApplicationController
  def new
    @pet = Pet.find(params[:pet_id])
    @appointment = Appointment.new
  end

  def create
    @pet = Pet.find(params[:pet_id])
    @appointment.pet = @pet
    if @appointment.save
      puts "appointment saved sucessfully!"
      # redirect_to dashboard
    else
      render :new
    end
  end

  private

  def appointment_params
    params
    .require(:appointment)
    .permit(:pet_id)
  end
  
end
