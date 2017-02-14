class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string, null: false
    remove_column :users, :name, :email
    add_index :users, :username, unique: true
  end
end
