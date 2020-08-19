class PetsController < ApplicationController

  def index
   @pets = Pet.where(params[:species]) # raise
  end

  def show
    @pet = Pet.find(params[:id])
    @appointment = Appointment.new
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new
    if @pet.save
      redirect_to @pet, notice: 'Your pet was successfully created!'
    else
      render :new
    end
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
  end

end
