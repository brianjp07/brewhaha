class AddPhoneNumberToUser < ActiveRecord::Migration
  def change
    add_column :users, :phone, :string

    User.reset_column_information

    reversible do |dir|
      dir.up {
        User.update_all phone: "000-000-0000"
      }

      change_column :users, :phone, :string, null: false
    end
  end
end
