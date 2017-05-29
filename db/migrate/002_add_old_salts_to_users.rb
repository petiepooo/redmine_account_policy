class AddOldSaltsToUsers < ActiveRecord::Migration
  def change
	# setting the size of the column to the size of the salt (32)
	# multipled by double the maximum number of stored passwords (60)
	# as that is how many random salts are added for every salt
	# stored. Finally, this number is multiplied by the number of
<<<<<<< HEAD
	# the maximum number of stored passwords (30) + 1
	add_column 	:users,
	  :old_salts,
	  :string,
=======
	# the maximum number of stored passwords (30) + 1   
	add_column 	:users, 
	  :old_salts, 
	  :text, 
>>>>>>> 24fdd18d9377183951d1973cf60eadeb83379f6e
	  :null => true,
	 # :limit => ((32*60) * 31)
	  :limit => ((32) * 31)
  end
end
