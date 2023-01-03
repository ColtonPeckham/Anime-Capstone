class AddAnimeIdToFavorites < ActiveRecord::Migration[7.0]
  def change
    add_column :favorites, :anime_id, :integer
  end
end
