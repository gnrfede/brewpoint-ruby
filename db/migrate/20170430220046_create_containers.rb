class CreateContainers < ActiveRecord::Migration[5.0]
  def change
    create_table :containers do |t|
      t.integer :capacity
      t.string :type
      t.integer :track_num
      t.boolean :available
      t.references :company
      t.timestamps
    end
  end
end
