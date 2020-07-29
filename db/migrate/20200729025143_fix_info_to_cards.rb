class FixInfoToCards < ActiveRecord::Migration[6.0]
  def change
    rename_column :cards, :attribute, :cardattribute
  end
end
