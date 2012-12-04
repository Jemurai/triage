class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.integer :priority
      t.integer :rank
      t.integer :tier
      t.boolean :verified

      t.timestamps
    end
  end
end
