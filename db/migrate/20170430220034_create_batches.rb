class CreateBatches < ActiveRecord::Migration[5.0]
  def change
    create_table :batches do |t|
      t.timestamp :elab_date
      t.timestamp :init_date
      t.integer :ibu
      t.integer :initial_density
      t.integer :final_density
      t.boolean :available
      t.references :product
      t.references :container
      t.timestamps
    end
  end
end
