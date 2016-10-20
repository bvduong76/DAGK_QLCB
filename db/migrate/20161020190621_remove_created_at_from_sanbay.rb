class RemoveCreatedAtFromSanbay < ActiveRecord::Migration[5.0]
  def change
    remove_column :sanbays, :created_at, :datetime
    remove_column :sanbays, :updated_at, :datetime
  end
end
