require 'spec_helper'

describe AdminSingUpController do

  describe "GET 'admin'" do
    it "returns http success" do
      get 'admin'
      response.should be_success
    end
  end

end
