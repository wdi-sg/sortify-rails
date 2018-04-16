class SongsController < ApplicationController
	def index
		@songs = Song.where(:genre_id => params[:genre_id])
	end
end

