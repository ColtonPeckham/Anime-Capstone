class AddTitleToAnimes < ActiveRecord::Migration[7.0]
  def change
    add_column :animes, :title, :string
  end
end
