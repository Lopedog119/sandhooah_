require 'rails_helper'

RSpec.describe "workout_posts/show", :type => :view do
  before(:each) do
    @workout_post = assign(:workout_post, WorkoutPost.create!(
      :title => "Title",
      :description => "MyText",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
