class CreateNgays < ActiveRecord::Migration
  def change
    create_table :ngays do |t|
      t.integer :Tien
      t.string :Ghichu
      t.string :Tong

      t.timestamps
    end
  end
end
