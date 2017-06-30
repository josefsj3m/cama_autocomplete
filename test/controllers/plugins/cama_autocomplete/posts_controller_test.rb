require 'test_helper'

class Plugins::CamaAutocomplete::PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get plugins_cama_autocomplete_posts_search_url
    assert_response :success
  end

end
