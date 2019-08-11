class RemoveBodyRegionFromExercises < ActiveRecord::Migration[5.2]
  def change
    remove_column :exercises, :body_region, :string
  end
end
