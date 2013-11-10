require 'spec_helper'

describe "soonevents/new" do
  before(:each) do
    assign(:soonevent, stub_model(Soonevent,
      :title => "MyString",
      :content => "MyText"
    ).as_new_record)
  end

  it "renders new soonevent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => soonevents_path, :method => "post" do
      assert_select "input#soonevent_title", :name => "soonevent[title]"
      assert_select "textarea#soonevent_content", :name => "soonevent[content]"
    end
  end
end
