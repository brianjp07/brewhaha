class AddUsersToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :producer_id, :string
    add_index :orders, :producer_id
  end
end

