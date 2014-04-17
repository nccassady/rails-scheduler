class RemovePasswordAndSaltFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :password, :string
  	remove_column :users, :salt, :string
  end
end
