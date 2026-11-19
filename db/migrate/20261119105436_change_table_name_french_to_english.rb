class ChangeTableNameFrenchToEnglish < ActiveRecord::Migration[8.1]
  def change
    rename_table :listes, :lists
  end
end
