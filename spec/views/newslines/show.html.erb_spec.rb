require 'spec_helper'

describe "newslines/show" do
  before(:each) do
    @newsline = assign(:newsline, stub_model(Newsline,
      :title => "Title",
      :description => "MyText",
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
