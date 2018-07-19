class SongsController < ApplicationController
  

  def index
    @song = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end


  def edit
    @song = Song.find(params[:id])
  end

  def create
    @song = Song.new(song_params)

    @song.save
    redirect_to @song
  end

  def update
    @song = Song.find(params[:id])

    @song.update(song_params)
    redirect_to @song
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy

    redirect_to songs_path
  end

  private
  def song_params
    params.require(:song).permit(:name, :genre_ids => [])
  end
end

