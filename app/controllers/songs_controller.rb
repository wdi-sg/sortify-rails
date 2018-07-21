class SongsController < ApplicationController
  def index
    @genre = Genre.find(params[:genre_id])
    @songs = @genre.songs
  end

  def show
    @song = Song.find(params[:id])
    @genres = @song.genres
  end

  def new
    @genres = Genre.all
  end

  def create
    # manual way:
    # new_song = Song.new
    # new_song.name = params[:song][:name]
    # params[:song][:genre_ids].each do |genre_id|
    #   if !genre_id.blank?
    #     genre = Genre.find(genre_id)
    #     new_song.genres << genre
    #   end
    # end
    # new_song.save
    # ruby way:
    new_song = Song.new(song_params)
    new_song.save
    redirect_to new_song
  end

  def edit
    @song = Song.find(params[:id])
    @genres = Genre.all
  end

  def update
    song = Song.find(params[:id])
    song.update(song_params)
    redirect_to song
  end

  def destroy
    song = Song.find(params[:id])
    song.destroy
    redirect_to '/'
  end

  private
  def song_params
    params.require(:song).permit(:name, :genre_ids => [])
  end
end
