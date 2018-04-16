class SongsController < ApplicationController
	def index
		@songs = Songs.where(genre_id: params[:genre_id])
	end
end
