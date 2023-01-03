class RemoveNameFromAnimes < ActiveRecord::Migration[7.0]
  def change
    remove_column :animes, :name, :string
  end
end
