require 'rails_helper'

RSpec.describe "workout_posts/index", :type => :view do
  before(:each) do
    assign(:workout_posts, [
      WorkoutPost.create!(
        :title => "Title",
        :description => "MyText",
        :user => nil
      ),
      WorkoutPost.create!(
        :title => "Title",
        :description => "MyText",
        :user => nil
      )
    ])
  end

  it "renders a list of workout_posts" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
