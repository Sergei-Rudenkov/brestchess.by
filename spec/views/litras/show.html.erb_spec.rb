require 'spec_helper'

describe "litras/show" do
  before(:each) do
    @litra = assign(:litra, stub_model(Litra,
      :title => "Title",
      :main => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
  end
end
