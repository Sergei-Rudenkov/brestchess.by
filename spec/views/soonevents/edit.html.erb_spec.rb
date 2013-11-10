require 'spec_helper'

describe "soonevents/edit" do
  before(:each) do
    @soonevent = assign(:soonevent, stub_model(Soonevent,
      :title => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit soonevent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => soonevents_path(@soonevent), :method => "post" do
      assert_select "input#soonevent_title", :name => "soonevent[title]"
      assert_select "textarea#soonevent_content", :name => "soonevent[content]"
    end
  end
end
