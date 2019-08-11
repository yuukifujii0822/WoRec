class ChangeColumnToAllowNull < ActiveRecord::Migration[5.2]
  def change
    change_column :bodies, :created_at,:datetime, null: true
    change_column :bodies, :updated_at,:datetime, null: true
  end
end
