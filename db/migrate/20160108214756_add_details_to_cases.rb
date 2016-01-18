class AddDetailsToCases < ActiveRecord::Migration
  def change
    add_column :cases, :client_name,  :string, default: ''
    add_column :cases, :client_email,  :string, default: ''
    add_column :cases, :client_phone,  :string, default: ''
    add_column :cases, :template,  :integer
  end
end
