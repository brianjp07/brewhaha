class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :quantity,          null: false, default: 1
      t.datetime :order_created
      t.string :location,           null: false, default: ""
      t.string
      t.timestamps null: false
    end
  end
end
