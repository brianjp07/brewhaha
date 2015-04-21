class Order < ActiveRecord::Base
  attr_accessible :quantity, :order_created, :location, :consumer_id, :expiration, :fulfilled_time
  belongs_to :user, :foreign_key => user.id
end
