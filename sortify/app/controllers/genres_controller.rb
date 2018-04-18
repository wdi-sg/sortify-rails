class GenresController < ApplicationController
  before_action :authenticate_user!, :except => [ :show, :index ]
  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
    @songs = Song.where(id: @genre.song_ids)
  end

  def new
    @songs = Song.all
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      redirect_to @genre
    else
      render new_genre_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def genre_params
    params.require(:genre).permit(:name, :description, :song_ids => [])
  end
end
