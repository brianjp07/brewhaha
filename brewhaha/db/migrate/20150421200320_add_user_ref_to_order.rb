class AddUserRefToOrder < ActiveRecord::Migration
  def change
    add_reference :orders, :consumer, index: true, foreign_key: true
    add_reference :orders, :producer, index: true, foreign_key: true

    remove_column :orders, :consumer
    remove_column :orders, :producer
  end
end
