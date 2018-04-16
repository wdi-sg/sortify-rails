class SongsController < ApplicationController
	def index
	end

	def show
	end

	def new
	end

	def edit
	end

	def create
	end

	def update	
	end

	def destroy
	end

	private
	def song_params
  		params.require(:song).permit(:name, :genre_id => [])
	end
end
