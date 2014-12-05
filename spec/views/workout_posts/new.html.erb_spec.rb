require 'rails_helper'

RSpec.describe "workout_posts/new", :type => :view do
  before(:each) do
    assign(:workout_post, WorkoutPost.new(
      :title => "MyString",
      :description => "MyText",
      :user => nil
    ))
  end

  it "renders new workout_post form" do
    render

    assert_select "form[action=?][method=?]", workout_posts_path, "post" do

      assert_select "input#workout_post_title[name=?]", "workout_post[title]"

      assert_select "textarea#workout_post_description[name=?]", "workout_post[description]"

      assert_select "input#workout_post_user_id[name=?]", "workout_post[user_id]"
    end
  end
end
