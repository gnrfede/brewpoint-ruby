class CreateSteps < ActiveRecord::Migration[5.0]
  def change
    create_table :steps do |t|
      t.string :description
      t.integer :minutes
      t.references :stage
      t.timestamps
    end
  end
end
