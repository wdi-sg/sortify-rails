class PetsController < ApplicationController

	ActiveRecord::Base.logger = Logger.new(STDOUT)

	def index
		if params.has_key?(:owner_id)

			# @pets = Pet.joins(:owners).where('owners_pets.owner_id' => params[:owner_id]) 
			# OR
			@pets = Pet.joins(:owners).where(owners_pets: {owner_id: params[:owner_id]})

		else
			@pets = Pet.all
		end
	end

	def new
		@owners = Owner.all
	end

	def create
		@pet = Pet.new(pet_params)
		@pet.save

		redirect_to @pet
	end

	def show
		@pet = Pet.find(params[:id])
	end

	def edit
		@pet = Pet.find(params[:id])
	end

	def update
		@pet = Pet.find(params[:id])
		@pet.update(pet_params)

		redirect_to @pet
	end

	def destroy
		@pet = Pet.find(params[:id])
		@pet.destroy

		redirect_to pets_path
	end

	private

	def pet_params
		params.require(:pet).permit(:name, :species, :owner_ids => [])
	end
end