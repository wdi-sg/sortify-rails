class UsersController < ApplicationController

  before_action :find_user, only: [:edit, :update, :destroy]

  def index
    @user = User.all
  end

  def new
    @user = User.new
    @player = Player.all
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to @user
  end

  def show
    @user = User.find([params[:id]])
    render "index"
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to @user
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

private

  def user_params
    params.require(:user).permit(:name, :email, :player_ids => [])
  end

  def find_user
    @user = User.find(params[:id])
  end

end