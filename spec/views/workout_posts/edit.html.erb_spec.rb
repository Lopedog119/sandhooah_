require 'rails_helper'

RSpec.describe "workout_posts/edit", :type => :view do
  before(:each) do
    @workout_post = assign(:workout_post, WorkoutPost.create!(
      :title => "MyString",
      :description => "MyText",
      :user => nil
    ))
  end

  it "renders the edit workout_post form" do
    render

    assert_select "form[action=?][method=?]", workout_post_path(@workout_post), "post" do

      assert_select "input#workout_post_title[name=?]", "workout_post[title]"

      assert_select "textarea#workout_post_description[name=?]", "workout_post[description]"

      assert_select "input#workout_post_user_id[name=?]", "workout_post[user_id]"
    end
  end
end
