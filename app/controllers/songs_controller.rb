class SongsController < ApplicationController
  before_action :find_song, only: [:edit, :show, :update, :destroy]

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
    @genres = Genre.all
  end

  def create
    @song = Song.new(song_params)
    @song.save
    redirect_to root_path
  end

  def show
    @genres = @song.genres
  end

  def edit
    @genres = Genre.all
  end

  def update
    @song.update(song_params)
    redirect_to root_path
  end

  def destroy
    @song.destroy
    redirect_to root_path
  end

  private
    def song_params
      params.require(:song).permit(:name, genre_ids: [])
    end

    def find_song
      @song = Song.find(params[:id])
    end
end
