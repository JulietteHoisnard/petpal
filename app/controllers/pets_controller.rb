class PetsController < ApplicationController

  def index
    @pets = Pet.where(params[:species])
  end

  def show
    @pet = Pet.find(params[:id])
    @appointment = Appointment.new
  end

  def new
    @pet = Pet.new
    @pet.user = current_user
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
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

  private

  def pet_params
    params
    .require(:pet)
    .permit(:name, :user_id, :species, :availability, :pet_ability, :description, :photo, :location)
  end


end
