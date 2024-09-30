require "rails_helper"

RSpec.describe VirementsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/virements").to route_to("virements#index")
    end

    it "routes to #new" do
      expect(get: "/virements/new").to route_to("virements#new")
    end

    it "routes to #show" do
      expect(get: "/virements/1").to route_to("virements#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/virements/1/edit").to route_to("virements#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/virements").to route_to("virements#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/virements/1").to route_to("virements#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/virements/1").to route_to("virements#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/virements/1").to route_to("virements#destroy", id: "1")
    end
  end
end
