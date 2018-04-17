class SongsController < ApplicationController
  def index
    if !params[:genre_id].nil?
      @genre = Genre.find(params[:genre_id])
      @songs = Song.where(genre_id: params[:genre_id])
    else
      @songs = Song.all
  end
end

  def show
    if params[:genreid].nil?
      @song = Song.find(params[:id])
      @genres = Genre.where(id: @song.genre_ids)
    else
      @genre_id = params[:genre_id]
      @genre = Genre.find(@genre_id)
      @song = Song.find(params[:id])
      if !params[:genre_id].nil? && params[:genre_id].to_i != @song.genre_id
      end
    end
  end

  def new
    @genre_id = params[:genre_id]
    @genres = Genre.all
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to @song
    else
      render new_song_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def song_params
    params.require(:song).permit(:name, :genre_ids => [])
  end
end
