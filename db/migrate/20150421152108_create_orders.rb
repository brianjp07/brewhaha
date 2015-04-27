class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :quantity,           null: false, default: 1
      t.datetime :time_fulfilled
      t.string :location,            null: false, default: ''
      t.integer :expiration
      t.integer :consumer_id
      t.integer :producer_id

      t.timestamps null: false
    end
  end
end
