require "spec_helper"

describe LitrasController do
  describe "routing" do

    it "routes to #index" do
      get("/litras").should route_to("litras#index")
    end

    it "routes to #new" do
      get("/litras/new").should route_to("litras#new")
    end

    it "routes to #show" do
      get("/litras/1").should route_to("litras#show", :id => "1")
    end

    it "routes to #edit" do
      get("/litras/1/edit").should route_to("litras#edit", :id => "1")
    end

    it "routes to #create" do
      post("/litras").should route_to("litras#create")
    end

    it "routes to #update" do
      put("/litras/1").should route_to("litras#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/litras/1").should route_to("litras#destroy", :id => "1")
    end

  end
end
