class CreateIncludesCards < ActiveRecord::Migration[6.0]
  def change
    create_table :includes_cards do |t|
      t.integer :deck_id
      t.integer :card_id
      t.index ["card_id"], name: "index_includes_cards_on_card_id", using: :btree
      t.index ["deck_id"], name: "index_includes_cards_on_deck_id", using: :btree
      t.timestamps
    end
  end
end
