class Project < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :name, :priority, :rank, :tier, :rich_description
end
