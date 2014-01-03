require 'spec_helper'

describe "litras/new" do
  before(:each) do
    assign(:litra, stub_model(Litra,
      :title => "MyString",
      :main => "MyText"
    ).as_new_record)
  end

  it "renders new litra form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => litras_path, :method => "post" do
      assert_select "input#litra_title", :name => "litra[title]"
      assert_select "textarea#litra_main", :name => "litra[main]"
    end
  end
end
