class CreateSanbays < ActiveRecord::Migration[5.0]
  def change
    create_table :sanbays do |t|
      t.string :masanbay
      t.string :tensanbay

      t.timestamps
    end
  end
end
