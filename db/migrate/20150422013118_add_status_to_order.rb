class AddStatusToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :status, :integer

    Order.reset_column_information

    reversible do |dir|
      dir.up {
        Order.update_all status: 0 # Unassigned
      }

      change_column :orders, :status, :integer, null: false
    end
  end
end
