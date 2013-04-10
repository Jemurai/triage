class AddTimezoneToUser < ActiveRecord::Migration
  def change
    add_column :users, :timezone, :string
    
    execute "update users set timezone = 'Eastern Time (US & Canada)' where timezone is NULL"
    
  end
end
