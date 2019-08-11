class CreateBodyRegions < ActiveRecord::Migration[5.2]
  def change
    create_table :body_regions do |t|
      t.string :name
      t.timestamps
    end
  end
end
