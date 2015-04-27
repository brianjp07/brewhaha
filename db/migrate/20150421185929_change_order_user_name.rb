class ChangeOrderUserName < ActiveRecord::Migration
  def change
    rename_column :orders, :consumer_id, :consumer
    rename_column :orders, :producer_id, :producer
  end
end
