require 'spec_helper'

describe "newslines/new" do
  before(:each) do
    assign(:newsline, stub_model(Newsline,
      :title => "MyString",
      :description => "MyText",
      :content => "MyText"
    ).as_new_record)
  end

  it "renders new newsline form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => newslines_path, :method => "post" do
      assert_select "input#newsline_title", :name => "newsline[title]"
      assert_select "textarea#newsline_description", :name => "newsline[description]"
      assert_select "textarea#newsline_content", :name => "newsline[content]"
    end
  end
end
