class Tournament < ApplicationRecord
    has_many :tournament_teams
    has_many :teams, through: :tournament_teams
    has_many :games
end
