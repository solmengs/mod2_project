class TournamentsController < ApplicationController
    before_action :find_tournament, only: [:show]
  
  
  

  def index
    @tournaments = Tournament.all
  end
  
  
  def show
  end
  


  
  

  private
  def params_new 
    params.require(:tournament).permit(:location)
  end 
  def find_tournament
    @tournament = Tournament.find(params[:id])
  end 



end
