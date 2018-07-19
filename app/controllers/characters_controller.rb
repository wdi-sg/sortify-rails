class CharactersController < ApplicationController
    def index
        @character = Character.all
    end
    
    def show
        @character = Character.find(params[:id])
    end

    def new
        @character = Character.new
        @job = Job.all
    end

    def create
        @character = Character.new(character_params)
        @character.save
        redirect_to @character
    end

    def edit
        @character = Character.find(params[:id])
        @job = Job.all
    end

    def update
        @character = Character.find(params[:id])
        @character.update(character_params)
        redirect_to @character
    end

    private
    def character_params
        params.require(:character).permit(:name , :level , :race, :job_ids => [])
    end
end
