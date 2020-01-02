class AuthController < ApplicationController
    def login
    end 
    def verify
        player = Player.find_by(name: params[:auth][:name])
        if player
            session[:player_id]= player.id
            redirect_to :root
        else
            flash[:message ]= "Wrong Username"
            render :login 
        end
    end 
end