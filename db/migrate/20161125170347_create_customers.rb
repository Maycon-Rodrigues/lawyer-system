class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
