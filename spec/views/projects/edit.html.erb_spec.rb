require 'spec_helper'

describe "projects/edit" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :name => "MyString",
      :description => "MyString",
      :priority => 1,
      :rank => 1,
      :tier => 1,
      :verified => false
    ))
  end

  it "renders the edit project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => projects_path(@project), :method => "post" do
      assert_select "input#project_name", :name => "project[name]"
      assert_select "input#project_description", :name => "project[description]"
      assert_select "input#project_priority", :name => "project[priority]"
      assert_select "input#project_rank", :name => "project[rank]"
      assert_select "input#project_tier", :name => "project[tier]"
      assert_select "input#project_verified", :name => "project[verified]"
    end
  end
end
