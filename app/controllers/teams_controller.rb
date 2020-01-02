class TeamsController < ApplicationController
    before_action :find_team, only: [:edit, :update, :show]
  
  
  def new
    @team = Team.new
  end

  def index
    @teams = Team.all
  end
  
  
  def show
  end
  
  def create
    @team = Team.new(params_new)
    if @team.save
      redirect_to team_path(@team)
    else
      render :new
    end
  end 

  def edit
  end 

  def update
    @team.update
  end 
  

  private
  def params_new 
    params.require(:team).permit(:name, :point, :power_id)
  end 
  def find_team
    @team = Team.find(params[:id])
  end 


end
