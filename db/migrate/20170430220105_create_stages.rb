class CreateStages < ActiveRecord::Migration[5.0]
  def change
    create_table :stages do |t|
      t.string :name
      t.integer :order
      t.references :recipe
      t.timestamps
    end
  end
end
