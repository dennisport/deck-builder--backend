class Deck < ApplicationRecord
has_many :includes_card
has_many :cards, through: :includes_card
end
