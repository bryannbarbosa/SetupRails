class CreateOrdersTable < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :device
      t.string :imei, null: false, index: { unique: true }
      t.float :annual_price
      t.integer :parcel
      t.timestamps
    end
  end
end