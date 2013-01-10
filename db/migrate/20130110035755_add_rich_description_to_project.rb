class AddRichDescriptionToProject < ActiveRecord::Migration
  def change
    add_column :projects, :rich_description, :string, :limit => 2000
  end
end
