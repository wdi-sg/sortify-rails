class GenresController < ApplicationController

    def index
        @genres = Genre.all.order("id ASC")
    end

    def show
        @genre = Genre.find(params[:id])
    end
end