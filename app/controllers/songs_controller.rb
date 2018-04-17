class SongsController < ApplicationController
	def index
		if params[:genre_id]
			@songs = Songs.where(genre_id: params[:genre_id])
		else
			@songs = Songs.all
		end
	end

	def show
		@songs=Song.where(Songs.id = 1)
	end


end
