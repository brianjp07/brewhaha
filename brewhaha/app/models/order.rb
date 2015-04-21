class Order < ActiveRecord::Base
  #attr_accessible :quantity, :order_created, :location, :consumer_id, :expiration, :fulfilled_time
  model_name.instance_variable_set(:@route_key, 'order')
  #belongs_to :user, :foreign_key => user.id
end
