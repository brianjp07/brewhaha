class Order < ActiveRecord::Base
  belongs_to :consumer, :class_name => 'User'
  belongs_to :producer, :class_name => 'User'

  # Enum for status
  enum status: { unassigned: 0, assigned: 1, fulfilled: 2, expired: 3 }
end
