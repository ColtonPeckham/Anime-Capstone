class RemoveItemIdFromFavorites < ActiveRecord::Migration[7.0]
  def change
    remove_column :favorites, :item_id, :integer
  end
end
