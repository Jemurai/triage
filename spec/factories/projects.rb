# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    name "MyString"
    description "MyString"
    priority 1
    rank 1
    tier 1
    verified false
  end
end
