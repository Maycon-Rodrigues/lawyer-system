class CreatePprocesses < ActiveRecord::Migration[5.0]
  def change
    create_table :pprocesses do |t|
      t.integer :process
      t.string :archive
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
