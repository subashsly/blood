class AddUserInfoToUsers < ActiveRecord::Migration[5.1]
  def self.up
  	add_column :users, :first_name, :string
  	add_column :users, :last_name, :string
  	add_column :users, :gender, :integer
  	add_column :users, :phone_no, :string
  	add_column :users, :telephone_no, :string
  	add_column :users, :date_of_birth, :date
  	add_column :users, :address, :string
  	add_column :users, :city, :string
  	add_column :users, :weight, :float
  	add_column :users, :height, :float
  	add_column :users, :blood_group, :integer
  	add_column :users, :times_donate, :integer
  	add_column :users, :zip_code, :string
  end

   def self.down
      	
	  	remove_column :users, :last_name, :string
	  	remove_column :users, :gender, :integer
	  	remove_column :users, :phone_no, :string
	  	remove_column :users, :telephone_no, :string
	  	remove_column :users, :date_of_birth, :date
	  	removed_column :users, :address, :string
	  	remove_column :users, :city, :string
	  	remove_column :users, :weight, :float
	  	remove_column :users, :height, :float
	  	remove_column :users, :blood_group, :integer
	  	remove_column :users, :times_donate, :integer
	  	remove_column :users, :zip_code, :string
   end

end
