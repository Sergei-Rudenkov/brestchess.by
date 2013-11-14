require 'spec_helper'

describe "homes/show" do
  before(:each) do
    @home = assign(:home, stub_model(Home,
      :h1 => "H1",
      :h2 => "H2",
      :button => "Button",
      :img => "Img"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/H1/)
    rendered.should match(/H2/)
    rendered.should match(/Button/)
    rendered.should match(/Img/)
  end
end
