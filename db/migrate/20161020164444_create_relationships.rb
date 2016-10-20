class CreateRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :relationships do |t|
      t.integer :sanbaydi_id
      t.integer :sanbayden_id

      t.timestamps
    end
    add_index :relationships, :sanbaydi_id
    add_index :relationships, :sanbayden_id
    add_index :relationships, [:sanbaydi_id, :sanbayden_id], unique: true
  end
end
