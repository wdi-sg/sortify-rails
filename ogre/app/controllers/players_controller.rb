class PlayersController < ApplicationController
	def index
		@players = Player.all
	end

	def new
		@players = Player.all
	end

	def create		
		@player = Player.new(player_params)

		@player.save

		redirect_to @player
	end

	def show
		@player = Player.find(params[:id])
	end

	def edit
		@player = Player.find(player_params)
	end

	def update
		@player = Player.find(params[:id])

		@player.update(player_params)
		
		redirect_to @player
	end

	def destroy
		@player = Player.find(params[:id])

		@player.destory
		
		redirect_to players_path
	end

	private

	def player_params
  		params.require(:player).permit(:name, :job_ids => [])
	end	
end
