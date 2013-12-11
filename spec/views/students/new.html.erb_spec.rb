require 'spec_helper'

describe "students/new" do
  before(:each) do
    assign(:student, stub_model(Student,
      :name => "MyString",
      :rating => 1,
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new student form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => students_path, :method => "post" do
      assert_select "input#student_name", :name => "student[name]"
      assert_select "input#student_rating", :name => "student[rating]"
      assert_select "textarea#student_description", :name => "student[description]"
    end
  end
end
