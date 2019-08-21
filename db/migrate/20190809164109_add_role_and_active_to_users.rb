class AddRoleAndActiveToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :role, :integer, :null => false, :default => "1"
    add_column :users, :active, :boolean, :null => false, :default => "1"
  end
end
