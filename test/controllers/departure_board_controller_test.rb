require 'test_helper'

class DepartureBoardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get departure_board_index_url
    assert_response :success
  end

end
