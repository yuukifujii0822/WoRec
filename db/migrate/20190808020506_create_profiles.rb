class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.decimal :height
      t.decimal :body_weight
      t.string :image
      t.text :self_introduction
      
      t.timestamps
    end
  end
end
