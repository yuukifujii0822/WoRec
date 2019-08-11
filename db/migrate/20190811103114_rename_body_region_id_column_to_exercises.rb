class RenameBodyRegionIdColumnToExercises < ActiveRecord::Migration[5.2]
  def change
    rename_column :exercises, :body_region_id, :body_id
  end
end
