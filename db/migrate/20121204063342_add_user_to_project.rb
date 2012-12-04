class AddUserToProject < ActiveRecord::Migration
  def change
    add_column :projects, :owner, :string
  end
end
