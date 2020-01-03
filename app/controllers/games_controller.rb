class GamesController < ApplicationController
   
    before_action :find_game, only: [:show]
  
  
  

    def index
      @games = Game.search(params[:search])
    end
    
    
    def show
    end
    
  
    def search 
      # byebug
     @tournaments = Game.all.where("location like ?", "%#{params[:search]}%")
 
     redirect_to games_path
  end 
  
    
    
  
    private
    def params_new 
      params.require(:game).permit(:time, :day, :search)
    end 
    def find_game
      @game = Game.find(params[:id])
    end 

end
