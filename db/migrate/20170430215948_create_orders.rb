class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.timestamp :creation_date
      t.timestamp :delivery_date
      t.references :user
      t.references :company
      t.timestamps
    end
  end
end
