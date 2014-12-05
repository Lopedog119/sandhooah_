json.array!(@workout_posts) do |workout_post|
  json.extract! workout_post, :id, :title, :description, :user_id
  json.url workout_post_url(workout_post, format: :json)
end
