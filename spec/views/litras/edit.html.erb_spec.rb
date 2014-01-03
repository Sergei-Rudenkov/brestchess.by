require 'spec_helper'

describe "litras/edit" do
  before(:each) do
    @litra = assign(:litra, stub_model(Litra,
      :title => "MyString",
      :main => "MyText"
    ))
  end

  it "renders the edit litra form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => litras_path(@litra), :method => "post" do
      assert_select "input#litra_title", :name => "litra[title]"
      assert_select "textarea#litra_main", :name => "litra[main]"
    end
  end
end
