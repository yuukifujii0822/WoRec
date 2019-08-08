class RemoveTimeFromWorkouts < ActiveRecord::Migration[5.2]
  def change
    remove_column :workouts, :time, :integer
  end
end
