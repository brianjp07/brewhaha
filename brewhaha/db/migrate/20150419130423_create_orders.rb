class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :quantity,          null: false, default: 1
      t.datetime :order_created
      t.string :location,           null: false, default: ""
      t.integer :consumer_id
      t.datetime :expiration
      t.datetime :fulfilled_time

      t.timestamps
    end
  end
end

class Order < ActiveRecord::Base
  attr_accessible :quantity, :order_created, :location, :consumer_id, :expiration, :fulfilled_time
end
