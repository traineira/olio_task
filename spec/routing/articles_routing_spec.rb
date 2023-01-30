# frozen_string_literal: true

require "rails_helper"

RSpec.describe ArticlesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/articles").to route_to("articles#index")
    end

    it "routes to #update_liked via POST" do
      expect(post: "/articles/update_liked").to route_to("articles#update_liked")
    end
  end
end
