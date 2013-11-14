require 'spec_helper'

describe "homes/edit" do
  before(:each) do
    @home = assign(:home, stub_model(Home,
      :h1 => "MyString",
      :h2 => "MyString",
      :button => "MyString",
      :img => "MyString"
    ))
  end

  it "renders the edit home form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => homes_path(@home), :method => "post" do
      assert_select "input#home_h1", :name => "home[h1]"
      assert_select "input#home_h2", :name => "home[h2]"
      assert_select "input#home_button", :name => "home[button]"
      assert_select "input#home_img", :name => "home[img]"
    end
  end
end
