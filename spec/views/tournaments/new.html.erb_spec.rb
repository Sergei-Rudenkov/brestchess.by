require 'spec_helper'

describe "tournaments/new" do
  before(:each) do
    assign(:tournament, stub_model(Tournament,
      :title => "MyString",
      :content => "MyText"
    ).as_new_record)
  end

  it "renders new tournament form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tournaments_path, :method => "post" do
      assert_select "input#tournament_title", :name => "tournament[title]"
      assert_select "textarea#tournament_content", :name => "tournament[content]"
    end
  end
end
