class Game < ApplicationRecord
    belongs_to :tournament
def self.search(search)
    results = Game.all
    if search != ""
        game = Game.select{|game| game.tournament.location == search}
        if game
            results = game
        else 
            results = Game.all
        end 
    else
        results
    end 
end 
end
