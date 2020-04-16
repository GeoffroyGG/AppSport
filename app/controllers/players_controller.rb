class PlayersController < ApplicationController

  def index
    #@players = Player.all
    @players = policy_scope(Player)
  end

  def show
    @player = Player.find(params[:id])
    authorize @player
  end

  def new
    @player = Player.new
    authorize @player
  end

  def create
    #player = Player.create(player_params)
    @player = current_user.players.build(player_params)
    authorize @player
    @player.save
    redirect_to players_path
  end

  def edit
    @player = Player.find(params[:id])
    authorize @player
  end

  def update
    @player = Player.find(params[:id])
    @player.update(player_params)
    authorize @player
    redirect_to players_path
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
    authorize @player
    redirect_to players_path
  end

private

def player_params
  params.require(:player).permit(:name)
end
end
