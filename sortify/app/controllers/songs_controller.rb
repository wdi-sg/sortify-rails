class SongsController < ApplicationController

  def index
    @genre_id = params[:genre_id]
    @genre = Genre.find_by(id: @genre_id)
    @songs = @genre.songs
  end

  def new
    @songs = Song.all
  end

  def create
    @song = Song.new(song_params)

    @song.save
    redirect_to @song
  end

  def show
    @song = Song.find(params[:id])
  end

private

  def song_params
    params.require(:park).permit(:name, :genre_id)
  end

end
