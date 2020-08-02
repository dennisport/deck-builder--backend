class Card < ApplicationRecord
has_many :includes_card
has_many :deck, through: :includes_card
end
