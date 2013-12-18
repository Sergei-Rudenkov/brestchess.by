require 'spec_helper'

describe "tourtables/show" do
  before(:each) do
    @tourtable = assign(:tourtable, stub_model(Tourtable,
      :name => "Name",
      :waitresult => 1,
      :result => 2,
      :tournament => "Tournament",
      :city => "City"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Tournament/)
    rendered.should match(/City/)
  end
end
