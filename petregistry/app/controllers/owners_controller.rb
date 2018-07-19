class OwnersController < ApplicationController

	def index

		if params.has_key?(:pet_id)

			@owners = Owner.joins(:pets).where(owners_pets: {pet_id: params[:pet_id]})
		else
			@owners = Owner.all
		end
	end

	def new
		@pets = Pet.all
	end

	def create
		@owner = Owner.create(owner_params)
		@owner.save

		redirect_to @owner
	end

	def show
		@owner = Owner.find(params[:id])
	end

	def edit
		@owner = Owner.find(params[:id])
	end

	def update
		@owner = Owner.find(params[:id])
		@owner.update(owner_params)

		redirect_to @owner
	end

	def destroy
		@owner = Owner.find(params[:id])
		@owner.destroy

		redirect_to owners_path
	end

	private

	def owner_params
		params.require(:owner).permit(:name, :pet_ids => [])
	end
end