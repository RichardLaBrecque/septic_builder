require "rails_helper"

RSpec.describe TestHolesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/test_holes").to route_to("test_holes#index")
    end

    it "routes to #new" do
      expect(get: "/test_holes/new").to route_to("test_holes#new")
    end

    it "routes to #show" do
      expect(get: "/test_holes/1").to route_to("test_holes#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/test_holes/1/edit").to route_to("test_holes#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/test_holes").to route_to("test_holes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/test_holes/1").to route_to("test_holes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/test_holes/1").to route_to("test_holes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/test_holes/1").to route_to("test_holes#destroy", id: "1")
    end
  end
end
