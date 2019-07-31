class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :氏名
      t.string :メールアドレス
      
      t.timestamps
    end
  end
end
