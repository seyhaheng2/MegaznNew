json.array!(@posts) do |post|
  json.extract! post, :id, :title, :image, :description, :format_post, :hide_post, :ads, :excerpt, :category, :user_id, :meta_title, :meta_description
  json.url post_url(post, format: :json)
end
