require "spec_helper"

describe TourtablesController do
  describe "routing" do

    it "routes to #index" do
      get("/tourtables").should route_to("tourtables#index")
    end

    it "routes to #new" do
      get("/tourtables/new").should route_to("tourtables#new")
    end

    it "routes to #show" do
      get("/tourtables/1").should route_to("tourtables#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tourtables/1/edit").should route_to("tourtables#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tourtables").should route_to("tourtables#create")
    end

    it "routes to #update" do
      put("/tourtables/1").should route_to("tourtables#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tourtables/1").should route_to("tourtables#destroy", :id => "1")
    end

  end
end
