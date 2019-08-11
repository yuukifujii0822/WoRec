class RenameBodyRegionToBody < ActiveRecord::Migration[5.2]
  def change
    rename_table :body_regions, :bodys
  end
end
