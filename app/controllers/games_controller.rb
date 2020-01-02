class GamesController < ApplicationController
   
    before_action :find_game, only: [:show]
  
  
  

    def index
      @games = Game.all
    end
    
    
    def show
    end
    
  
  
    
    
  
    private
    def params_new 
      params.require(:game).permit(:time, :day.uniq)
    end 
    def find_game
      @game = Game.find(params[:id])
    end 

end
