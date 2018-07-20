class GenresSongsController < ApplicationController
  before_action :set_genres_song, only: [:show, :edit, :update, :destroy]

  # GET /genres_songs
  # GET /genres_songs.json
  def index
    @genres_songs = GenresSongs.all
  end

  # GET /genres_songs/1
  # GET /genres_songs/1.json
  def show
  end

  # GET /genres_songs/new
  def new
    @genres_song = GenresSongs.new
  end

  # GET /genres_songs/1/edit
  def edit
  end

  # POST /genres_songs
  # POST /genres_songs.json
  def create
    @genres_song = GenresSongs.new(genres_song_params)

    respond_to do |format|
      if @genres_song.save
        format.html { redirect_to @genres_song, notice: 'Genres songs was successfully created.' }
        format.json { render :show, status: :created, location: @genres_song }
      else
        format.html { render :new }
        format.json { render json: @genres_song.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /genres_songs/1
  # PATCH/PUT /genres_songs/1.json
  def update
    respond_to do |format|
      if @genres_song.update(genres_song_params)
        format.html { redirect_to @genres_song, notice: 'Genres songs was successfully updated.' }
        format.json { render :show, status: :ok, location: @genres_song }
      else
        format.html { render :edit }
        format.json { render json: @genres_song.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /genres_songs/1
  # DELETE /genres_songs/1.json
  def destroy
    @genres_song.destroy
    respond_to do |format|
      format.html { redirect_to genres_songs_index_url, notice: 'Genres songs was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_genres_song
      @genres_song = GenresSongs.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def genres_song_params
      params.require(:genres_song).permit(:genre_id, :song_id)
    end
end
