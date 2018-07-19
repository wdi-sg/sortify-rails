class SongsController < ApplicationController
  def index
    @genre = Genre.find(params[:genre_id])
    @songs = Song.where("genre_id = ?", params[:genre_id])
  end
end
