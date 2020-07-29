class AddInfoToCards < ActiveRecord::Migration[6.0]
  def change
    add_column :cards, :atk, :integer
    add_column :cards, :def, :integer
    add_column :cards, :level, :integer
    add_column :cards, :attribute, :string
  end
end
