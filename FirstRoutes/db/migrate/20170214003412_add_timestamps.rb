class AddTimestamps < ActiveRecord::Migration
  def change
    add_column :contacts, :timestamps, :datetime
  end
end
