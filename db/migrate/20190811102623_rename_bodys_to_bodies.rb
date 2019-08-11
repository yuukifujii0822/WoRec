class RenameBodysToBodies < ActiveRecord::Migration[5.2]
  def change
    rename_table :bodys, :bodies
  end
end
