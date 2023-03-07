class PetsController < ApplicationController

  def index
    @pets = Pet.all
  end

  def show
    # retrieve our pet
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def create
    pet = Pet.new(pet_params)
    pet.save
    redirect_to pet_path(pet) #=> /pets/12423452
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    pet = Pet.find(params[:id])
    pet.update(pet_params)
    redirect_to pet_path(pet) #=> /pets/12423452
  end

  def destroy
    pet = Pet.find(params[:id])
    pet.destroy
    redirect_to pets_path
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :address, :found_on, :species)
  end
end
