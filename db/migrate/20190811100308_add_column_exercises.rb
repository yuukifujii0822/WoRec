class AddColumnExercises < ActiveRecord::Migration[5.2]
  def up
    add_column :exercises, :body_region_id, :integer
  end

  def down
    remove_column :exercises, :body_region, :string
  end
end
