# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Card.destroy_all

@resp = Faraday.get 'https://db.ygoprodeck.com/api/v7/cardinfo.php'
card_data = JSON.parse(@resp.body)
cards = card_data["data"]

cards.each do |card|
    Card.create!(
        :name => card['name'],
        :id => card['id'],
        :desc => card['desc'],
        :cardtype => card['type'],
        :atk => card['atk'],
        :def => card['def'],
        :level => card['level'],
        :race => card['race'],
        :archetype => card['archetype'],
        :cardattribute => card['attribute'],
    )
end