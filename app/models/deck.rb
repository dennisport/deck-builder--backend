class Deck < ApplicationRecord
belongs_to :user
has_many :includes_card
has_many :cards, through: :includes_card
end
