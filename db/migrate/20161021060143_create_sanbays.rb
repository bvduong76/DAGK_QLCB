class CreateSanbays < ActiveRecord::Migration[5.0]
  def change
    create_table :sanbays  do |t|
      t.string :masanbay, unique: true
      t.string :tensanbay
    end
  end
end
