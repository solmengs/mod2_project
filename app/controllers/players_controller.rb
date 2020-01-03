class PlayersController < ApplicationController
    before_action :find_player, only: [:edit, :update, :destroy, :show]
  
  
    def new
      @player = Player.new
    end
  
    def index
      @players = Player.all
    end
    
    
    def show
    end
    
    def create

    
      @player = Player.new(params_new)
      # byebug
      if @player.save
        session[:player_id] 
        redirect_to players_path
      else
        flash[:message] = "This username already exist"
        redirect_to :login
      end
      
    end 
  
    def edit
    end 
  
    def update
      @player.update(params_new)
      redirect_to players_path(@player)
    end 
    def destroy
        @player.delete
        redirect_to players_path
    end 
    
  
    private
    def params_new 
      params.require(:player).permit(:name, :age, :team_id)
    end 
    def find_player
      @player = Player.find(params[:id])
    end 
end
