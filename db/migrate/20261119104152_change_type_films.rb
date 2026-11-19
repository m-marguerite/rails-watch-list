class ChangeTypeFilms < ActiveRecord::Migration[8.1]
  def change
    change_column :movies, :rating, :float
  end
end
