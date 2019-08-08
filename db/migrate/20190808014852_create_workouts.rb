class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.decimal :weight
      t.integer :rep
      t.integer :set
      t.text :note
      t.date :date
      
      t.timestamps
    end
  end
end
