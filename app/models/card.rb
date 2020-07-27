class Card < ApplicationRecord
has_many :includes_card
has_many :decks, through: :includes_card
end
