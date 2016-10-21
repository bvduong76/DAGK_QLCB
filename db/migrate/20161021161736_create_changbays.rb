class CreateChangbays < ActiveRecord::Migration[5.0]
  def change
    create_table :changbays do |t|
      t.string :ma
      t.integer :noidi, null: false
      t.integer :noiden, null: false
      t.date :ngay, null: false
      t.time :gio, null: false


    end
    add_index :changbays, [:noidi, :noiden, :ngay, :gio], unique: true
    add_foreign_key :changbays, :sanbays, column: :noidi, primary_key: "id"
    add_foreign_key :changbays, :sanbays, column: :noiden, primary_key: "id"
  end
end
