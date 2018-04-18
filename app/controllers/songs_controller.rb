class SongsController < ApplicationController

  def new
    @genre_id = params[:genre_id]
    @genres = Genre.all
    @songs = Song.all
  end

  def index
    @songs = Song.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @songs }
    end
  end

  def create
    @song = Song.new(song_params)

    @song.save
    redirect_to @song
  end

  def show
    # deal with the case that we are trying to get a ranger for a park that doesn't exist
    @song = Song.find(params[:id])

    # if params[:genre_id].to_i != @song.genre.id
    #   # do something
    # end
  end

  private

  def song_params
    params.require(:song).permit(:name, :genre_ids => [])
  end
end













