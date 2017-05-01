class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.integer :exp_days
      t.references :company
      t.timestamps
    end
  end
end
