class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.string :body_region
      t.string :exercise
      
      t.timestamps
    end
  end
end
