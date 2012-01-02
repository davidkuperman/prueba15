require "spec_helper"

describe CeosController do
  describe "routing" do

    it "routes to #index" do
      get("/ceos").should route_to("ceos#index")
    end

    it "routes to #new" do
      get("/ceos/new").should route_to("ceos#new")
    end

    it "routes to #show" do
      get("/ceos/1").should route_to("ceos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ceos/1/edit").should route_to("ceos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ceos").should route_to("ceos#create")
    end

    it "routes to #update" do
      put("/ceos/1").should route_to("ceos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ceos/1").should route_to("ceos#destroy", :id => "1")
    end

  end
end
