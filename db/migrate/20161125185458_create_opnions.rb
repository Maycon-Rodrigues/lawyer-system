class CreateOpnions < ActiveRecord::Migration[5.0]
  def change
    create_table :opnions do |t|
      t.text :opnion
      t.references :customer, foreign_key: true
      t.references :user, foreign_key: true
      t.references :pprocess, foreign_key: true

      t.timestamps
    end
  end
end
