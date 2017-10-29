class AddRoleTypeToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :role_type, :string, default: "user"
  end
end
