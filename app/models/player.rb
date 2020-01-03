class Player < ApplicationRecord
    belongs_to :team
    validates :name, uniqueness: true
    validates :age, :inclusion =>  9..50 
end
