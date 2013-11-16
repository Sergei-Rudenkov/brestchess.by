require 'spec_helper'

describe "newslines/index" do
  before(:each) do
    assign(:newslines, [
      stub_model(Newsline,
        :title => "Title",
        :description => "MyText",
        :content => "MyText"
      ),
      stub_model(Newsline,
        :title => "Title",
        :description => "MyText",
        :content => "MyText"
      )
    ])
  end

  it "renders a list of newslines" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
