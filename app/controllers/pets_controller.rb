class PetsController < ApplicationController

  def index
    if params[:query1].present? && params[:query2].present?
      @pets = Pet.where("species ILIKE ? AND location ILIKE ?", "%#{params[:query1]}%", "%#{params[:query2]}%")
    elsif
      params[:query1].present?
      @pets = Pet.where("species ILIKE ?", "%#{params[:query1]}%")
    elsif
      params[:query2].present?
      @pets = Pet.where("location ILIKE ?", "%#{params[:query2]}%")
    else  
      @pets = Pet.all
    end
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
