class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.integer :workout_id
      t.decimal :weight
      t.integer :rep
      t.integer :set_count
      t.text :note
      
      t.timestamps
    end
  end
end
