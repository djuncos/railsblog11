class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change

  	add_column :users, :first_name, :string
  	add_column :users, :last_name, :string
  	add_column :users, :username, :string
  	add_column :users, :password, :string
  	add_column :users, :password_confirmation, :string


  end
end
