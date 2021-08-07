require "rails_helper"

RSpec.describe CoverImageLinksController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/cover_image_links").to route_to("cover_image_links#index")
    end

    it "routes to #new" do
      expect(get: "/cover_image_links/new").to route_to("cover_image_links#new")
    end

    it "routes to #show" do
      expect(get: "/cover_image_links/1").to route_to("cover_image_links#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/cover_image_links/1/edit").to route_to("cover_image_links#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/cover_image_links").to route_to("cover_image_links#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/cover_image_links/1").to route_to("cover_image_links#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/cover_image_links/1").to route_to("cover_image_links#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/cover_image_links/1").to route_to("cover_image_links#destroy", id: "1")
    end
  end
end
