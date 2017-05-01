class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.references :step
      t.references :supply
      t.integer :amount
      t.timestamps
    end
  end
end
