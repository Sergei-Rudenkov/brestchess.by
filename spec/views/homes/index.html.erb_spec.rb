require 'spec_helper'

describe "homes/index" do
  before(:each) do
    assign(:homes, [
      stub_model(Home,
        :h1 => "H1",
        :h2 => "H2",
        :button => "Button",
        :img => "Img"
      ),
      stub_model(Home,
        :h1 => "H1",
        :h2 => "H2",
        :button => "Button",
        :img => "Img"
      )
    ])
  end

  it "renders a list of homes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "H1".to_s, :count => 2
    assert_select "tr>td", :text => "H2".to_s, :count => 2
    assert_select "tr>td", :text => "Button".to_s, :count => 2
    assert_select "tr>td", :text => "Img".to_s, :count => 2
  end
end
