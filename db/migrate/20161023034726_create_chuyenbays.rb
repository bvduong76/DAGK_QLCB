class CreateChuyenbays < ActiveRecord::Migration[5.0]
  def change
    create_table :chuyenbays do |t|
      t.integer :machangbay
      t.float :giaban
      t.integer :soluong
    end
    add_index :chuyenbays, [:machangbay, :giaban], unique: true
    add_foreign_key :chuyenbays, :changbays, column: :machangbay, primary_key: "id"
  end
end
