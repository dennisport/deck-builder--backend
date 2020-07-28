class AddColumnsToCards < ActiveRecord::Migration[6.0]
  def change
    add_column :cards, :type, :text
    add_column :cards, :desc, :text
    add_column :cards, :race, :string
    add_column :cards, :archetype, :string
    add_column :cards, :set_name, :text
    add_column :cards, :set_rarity, :string
    add_column :cards, :set_price, :integer
    add_column :cards, :image_url, :string
  end
end
