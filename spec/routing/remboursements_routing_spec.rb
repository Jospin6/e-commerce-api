require "rails_helper"

RSpec.describe RemboursementsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/remboursements").to route_to("remboursements#index")
    end

    it "routes to #new" do
      expect(get: "/remboursements/new").to route_to("remboursements#new")
    end

    it "routes to #show" do
      expect(get: "/remboursements/1").to route_to("remboursements#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/remboursements/1/edit").to route_to("remboursements#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/remboursements").to route_to("remboursements#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/remboursements/1").to route_to("remboursements#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/remboursements/1").to route_to("remboursements#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/remboursements/1").to route_to("remboursements#destroy", id: "1")
    end
  end
end
