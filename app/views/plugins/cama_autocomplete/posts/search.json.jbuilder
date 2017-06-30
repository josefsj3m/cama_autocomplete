json.array!(@posts.limit(current_site.front_per_page).decorate) do |post|
  json.the_title        post.the_title
  json.the_url       post.the_url
  json.the_thumb_url    post.the_thumb_url
end
