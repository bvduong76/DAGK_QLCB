class CreateHanhtrinhs < ActiveRecord::Migration[5.0]
  def change
    create_table :hanhtrinhs do |t|
      t.integer :sanbaydi, null: false
      t.integer :sanbayden, null: false
    end

    add_index :hanhtrinhs, [:sanbaydi, :sanbayden], unique: true
    add_foreign_key :hanhtrinhs, :sanbays, column: :sanbaydi, primary_key: "id"
    add_foreign_key :hanhtrinhs, :sanbays, column: :sanbayden, primary_key: "id"
  end
end
