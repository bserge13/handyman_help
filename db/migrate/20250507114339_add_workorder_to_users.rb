class AddWorkorderToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :customers, :workorder_id, :bigint
    add_foreign_key :customers, :workorders, column: :workorder_id
    add_index :customers, :workorder_id
  end
end
