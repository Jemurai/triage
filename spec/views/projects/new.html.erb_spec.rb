require 'spec_helper'

describe "projects/new" do
  before(:each) do
    assign(:project, stub_model(Project,
      :name => "MyString",
      :description => "MyString",
      :priority => 1,
      :rank => 1,
      :tier => 1,
      :verified => false
    ).as_new_record)
  end

  it "renders new project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => projects_path, :method => "post" do
      assert_select "input#project_name", :name => "project[name]"
      assert_select "input#project_description", :name => "project[description]"
      assert_select "input#project_priority", :name => "project[priority]"
      assert_select "input#project_rank", :name => "project[rank]"
      assert_select "input#project_tier", :name => "project[tier]"
      assert_select "input#project_verified", :name => "project[verified]"
    end
  end
end
