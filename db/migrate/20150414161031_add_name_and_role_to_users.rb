class AddNameAndRoleToUsers < ActiveRecord::Migration
  def change

    # Create the columns, add values, THEN add not null. See http://stackoverflow.com/a/19216920

    add_column :users, :name, :string
    add_column :users, :role, :integer

    User.reset_column_information

    reversible do |dir|
      dir.up {
        User.update_all name: "Anonymous User"
        User.update_all role: 1 # consumer
      }

      change_column :users, :name, :string, null: false
      change_column :users, :role, :integer, null: false
    end

  end
end
