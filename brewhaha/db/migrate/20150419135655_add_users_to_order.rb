class AddUsersToOrder < ActiveRecord::Migration
  def change

    add_column :orders, :consumer, :string
    add_column :orders, :producer, :string

    #belongs_to :consumer, :class_name => "User"
    #belongs_to :producer, :class_name => "User"

    #has_many :assigned_tickets, :class_name => "Ticket", :foreign_key => "assignee_id"
    #has_many :submitted_tickets, :class_name => "Ticket", :foreign_key => "submitter_id"
  end
end
