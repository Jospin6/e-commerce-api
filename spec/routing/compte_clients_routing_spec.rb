require "rails_helper"

RSpec.describe CompteClientsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/compte_clients").to route_to("compte_clients#index")
    end

    it "routes to #new" do
      expect(get: "/compte_clients/new").to route_to("compte_clients#new")
    end

    it "routes to #show" do
      expect(get: "/compte_clients/1").to route_to("compte_clients#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/compte_clients/1/edit").to route_to("compte_clients#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/compte_clients").to route_to("compte_clients#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/compte_clients/1").to route_to("compte_clients#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/compte_clients/1").to route_to("compte_clients#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/compte_clients/1").to route_to("compte_clients#destroy", id: "1")
    end
  end
end
