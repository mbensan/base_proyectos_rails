class AddDetailsToUser < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :name, :string, limit: 30, null: false
    add_column :users, :role, :string, limit: 30, default: "client"
    # client - admin
    add_column :users, :phone, :string, limit: 30
  
    
  end
end
