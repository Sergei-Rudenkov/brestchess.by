require 'spec_helper'

describe "tourtables/index" do
  before(:each) do
    assign(:tourtables, [
      stub_model(Tourtable,
        :name => "Name",
        :waitresult => 1,
        :result => 2,
        :tournament => "Tournament",
        :city => "City"
      ),
      stub_model(Tourtable,
        :name => "Name",
        :waitresult => 1,
        :result => 2,
        :tournament => "Tournament",
        :city => "City"
      )
    ])
  end

  it "renders a list of tourtables" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Tournament".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
  end
end
