class CreateWorkorders < ActiveRecord::Migration[7.1]
  def change
    create_table :workorders do |t|
      t.string :description
      t.string :work_type
      t.timestamps
    end
  end
end
