class GenresController < ApplicationController

  def index
    if params[:song_id]
      @song = Song.find(params[:song_id])
      @genres = @song.genres
    else
      @genre = Genre.all
    end
  end

  def new
    @genre = Genre.new
    @songs = Song.all
  end

  def create
    @genre = Genre.new(genre_params)
    @genre.save
    redirect_to root_path
  end

  def show
    @genre = Genre.find(params[:id])
    @songs = @genre.songs
  end

  private
    def genre_params
      params.require(:genre).permit(:name, song_ids: [])
    end

end
