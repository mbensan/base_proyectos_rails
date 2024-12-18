class AddDetailsToUser < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :name, :string, limit: 30, null: false
    add_column :users, :role, :string, limit: 30, default: "client"
    # client - admin
    add_column :users, :last_name, :string, limit: 30, null: false
    add_column :users, :phone, :string, limit: 30
    add_column :users, :address, :string, limit: 50
    
    # sólo para el personal Administrativo
    add_column :users, :position, :string, limit: 50
    add_column :users, :specialization, :string, limit: 50
    
  end
end
