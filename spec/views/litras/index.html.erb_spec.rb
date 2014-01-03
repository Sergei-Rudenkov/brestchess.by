require 'spec_helper'

describe "litras/index" do
  before(:each) do
    assign(:litras, [
      stub_model(Litra,
        :title => "Title",
        :main => "MyText"
      ),
      stub_model(Litra,
        :title => "Title",
        :main => "MyText"
      )
    ])
  end

  it "renders a list of litras" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
