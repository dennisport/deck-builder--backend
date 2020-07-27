class CreateDecks < ActiveRecord::Migration[6.0]
  def change
    create_table :decks do |t|
      t.string :name
      t.integer :user_id
      t.index ["user_id"], name: "index_decks_on_user_id", using: :btree
      t.timestamps
    end
  end
end
