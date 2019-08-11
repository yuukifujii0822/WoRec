class RenameExerciseColumnToExercises < ActiveRecord::Migration[5.2]
  def change
     rename_column :exercises, :exercise, :name
  end
end
