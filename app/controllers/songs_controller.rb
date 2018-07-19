class SongsController < ApplicationController
  def show
    @song_id = Song.find(params[:id])
  end
end
