class CreateSupplies < ActiveRecord::Migration[5.0]
  def change
    create_table :supplies do |t|
      t.string :name
      t.string :description
      t.integer :amount
      t.references :company
      t.timestamps
    end
  end
end
