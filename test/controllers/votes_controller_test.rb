require 'test_helper'

class VotesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get votes_index_url
    assert_response :success
  end

  test "should get create" do
    get votes_create_url
    assert_response :success
  end

end
