class AddUsersToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :producer_id, :string
    add_index :orders, :producer_id
  end
end

class Order < ActiveRecord::Base
  belongs_to :user, :foreign_key => user.id
end

class User < ActiveRecord::Base
  has_many :orders
end
