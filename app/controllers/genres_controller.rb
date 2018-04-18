class GenresController < ApplicationController

  def new
    @songs = Song.all
    @genres = Genre.all
  end

  def index
    # byebug
    @genres = Genre.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @genres }
    end
  end

  def create
    @genre = Genre.new(genre_params)

    @genre.save
    redirect_to @genre
  end

  def show
    @genre = Genre.find(params[:id])
  end

  private

  def genre_params
    params.require(:genre).permit(:name, :description, :ranger_ids => [])
  end

end