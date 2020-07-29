class ChangeColumnForCards < ActiveRecord::Migration[6.0]
  def change
    change_column :cards, :name, :text
  end
end
