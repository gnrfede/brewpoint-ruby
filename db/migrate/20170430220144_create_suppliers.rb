class CreateSuppliers < ActiveRecord::Migration[5.0]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :mail
      t.string :description
      t.references :company
      t.timestamps
    end
  end
end
