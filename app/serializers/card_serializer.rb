class CardSerializer < ActiveModel::Serializer
  attributes :id, :name, :cardtype, :desc, :archetype, :atk, :def, :level, :race, :cardattribute, :image_url
end
