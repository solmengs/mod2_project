class Player < ApplicationRecord
    belongs_to :team
    validates :name, uniqueness: true
    validates :age, length: { in: 9..50 }
end
