class CreateSuppliersSuppliesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :suppliers_supplies, id: false do |t|
      t.belongs_to :supplier
      t.belongs_to :supply
    end
  end
end
