class SongsController < ApplicationController
  before_action :authenticate_user!, :except => [ :show, :index ]

  # Display all songs if no user login
  # Display songs pertaining to the user if user logins
  def index
    if current_user
      puts "Displaying songs related to the user..."
      @songs = Song.where(user_id: current_user.id)
    else
      puts "Rendering all songs..."
      @songs = Song.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @songs }
    end
    end

    if params[:genre_id]
      @genre_name = Genre.find(params[:genre_id]).name
      puts "Genre name => " + @genre_name
      @songs = Genre.find(params[:genre_id]).songs
      render 'index'
    end

    gon.songs = @songs
  end

  def show
    @song = Song.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @song }
    end
  end

  def new
    @song = Song.new
    @genres = Genre.all
  end

  def edit
    @song = Song.find(params[:id])
  end

  def create
    byebug
    @song = Song.new(song_params)

    @song.user = current_user

    @genre = Genre.find(params[:song][:genre_id])
    @genre.songs << @song

    if @song.save
      redirect_to @song
    else
      render 'new'
    end
  end

  def update
    @song = Song.find(params[:id])

    if @song.update(song_params)
      redirect_to @song
    else
      render 'edit'
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy

    redirect_to articles_path
  end

  private
    def song_params
      params.require(:song).permit(:title)
    end
end
