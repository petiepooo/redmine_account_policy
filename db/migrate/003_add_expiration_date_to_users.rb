class AddExpirationDateToUsers < ActiveRecord::Migration
  def change
    # setting the expiry date for the users
    add_column :users,
      :expiry_date,
      :date,
      :null => true
  end
end
