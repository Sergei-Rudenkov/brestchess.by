require 'spec_helper'

describe "tourtables/new" do
  before(:each) do
    assign(:tourtable, stub_model(Tourtable,
      :name => "MyString",
      :waitresult => 1,
      :result => 1,
      :tournament => "MyString",
      :city => "MyString"
    ).as_new_record)
  end

  it "renders new tourtable form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tourtables_path, :method => "post" do
      assert_select "input#tourtable_name", :name => "tourtable[name]"
      assert_select "input#tourtable_waitresult", :name => "tourtable[waitresult]"
      assert_select "input#tourtable_result", :name => "tourtable[result]"
      assert_select "input#tourtable_tournament", :name => "tourtable[tournament]"
      assert_select "input#tourtable_city", :name => "tourtable[city]"
    end
  end
end
