# == Schema Information
#
# Table name: admins
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  password        :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  remember_token  :string(255)
#

require 'spec_helper'




describe Admin do

  before do
   @admin = Admin.new(name: "Example User", email: "user@example.com",
                     password: "foobar", password_confirmation: "foobar") 
   end         

  subject { @admin }

  it { should respond_to(:email) }
  it { should respond_to(:password_digest) }
  it { should respond_to(:password) }
  it { should respond_to(:authenticate) }


describe "remember token" do
    before { @admin.save }
    its(:remember_token) { should_not be_blank }
  end
  
end

