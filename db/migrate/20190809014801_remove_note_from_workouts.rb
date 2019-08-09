class RemoveNoteFromWorkouts < ActiveRecord::Migration[5.2]
  def change
    remove_column :workouts, :note, :text
    remove_column :workouts, :weight, :decimal
    remove_column :workouts, :rep, :integer
    remove_column :workouts, :set, :integer
    
  end
end
