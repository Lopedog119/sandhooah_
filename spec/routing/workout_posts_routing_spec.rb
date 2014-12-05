require "rails_helper"

RSpec.describe WorkoutPostsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/workout_posts").to route_to("workout_posts#index")
    end

    it "routes to #new" do
      expect(:get => "/workout_posts/new").to route_to("workout_posts#new")
    end

    it "routes to #show" do
      expect(:get => "/workout_posts/1").to route_to("workout_posts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/workout_posts/1/edit").to route_to("workout_posts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/workout_posts").to route_to("workout_posts#create")
    end

    it "routes to #update" do
      expect(:put => "/workout_posts/1").to route_to("workout_posts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/workout_posts/1").to route_to("workout_posts#destroy", :id => "1")
    end

  end
end
