require "spec_helper"

describe NewslinesController do
  describe "routing" do

    it "routes to #index" do
      get("/newslines").should route_to("newslines#index")
    end

    it "routes to #new" do
      get("/newslines/new").should route_to("newslines#new")
    end

    it "routes to #show" do
      get("/newslines/1").should route_to("newslines#show", :id => "1")
    end

    it "routes to #edit" do
      get("/newslines/1/edit").should route_to("newslines#edit", :id => "1")
    end

    it "routes to #create" do
      post("/newslines").should route_to("newslines#create")
    end

    it "routes to #update" do
      put("/newslines/1").should route_to("newslines#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/newslines/1").should route_to("newslines#destroy", :id => "1")
    end

  end
end
