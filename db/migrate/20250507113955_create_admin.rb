class CreateAdmin < ActiveRecord::Migration[7.1]
  def change
    create_table :admins do |t|
      t.string :email
      t.references :workorder, null: false, foreign_key: true

      t.timestamps
    end
  end
end
