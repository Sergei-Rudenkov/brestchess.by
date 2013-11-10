require "spec_helper"

describe SooneventsController do
  describe "routing" do

    it "routes to #index" do
      get("/soonevents").should route_to("soonevents#index")
    end

    it "routes to #new" do
      get("/soonevents/new").should route_to("soonevents#new")
    end

    it "routes to #show" do
      get("/soonevents/1").should route_to("soonevents#show", :id => "1")
    end

    it "routes to #edit" do
      get("/soonevents/1/edit").should route_to("soonevents#edit", :id => "1")
    end

    it "routes to #create" do
      post("/soonevents").should route_to("soonevents#create")
    end

    it "routes to #update" do
      put("/soonevents/1").should route_to("soonevents#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/soonevents/1").should route_to("soonevents#destroy", :id => "1")
    end

  end
end
