require 'rails_helper'

RSpec.describe "WorkoutPosts", :type => :request do
  describe "GET /workout_posts" do
    it "works! (now write some real specs)" do
      get workout_posts_path
      expect(response).to have_http_status(200)
    end
  end
end
