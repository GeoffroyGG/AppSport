class LeaguesController < ApplicationController
  def index
    #@leagues = League.all
    @leagues = policy_scope(League)
  end

  def show
    @league = League.find(params[:id])
    authorize @league
  end

  def new
    @league = League.new
    authorize @league
  end

  def create
    #league = League.new(league_params)
    @league = current_user.leagues.build(league_params)
    authorize @league
    @league.save
    redirect_to leagues_path
  end

  def edit
    @league = League.find(params[:id])
    authorize @league
  end

  def update
    @league = League.find(params[:id])
    @league.update(league_params)
    authorize @league
    redirect_to leagues_path
  end

  def destroy
    @league = League.find(params[:id])
    @league.delete
    authorize @league
    redirect_to leagues_path
  end

private

def league_params
  params.require(:league).permit(:name, :stars, :photo)
end
end
