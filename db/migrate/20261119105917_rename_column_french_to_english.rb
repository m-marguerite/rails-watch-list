class RenameColumnFrenchToEnglish < ActiveRecord::Migration[8.1]
  def change
    rename_column :lists, :nom, :name
  end
end
