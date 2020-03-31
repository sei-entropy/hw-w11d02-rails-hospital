require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get patients" do
    get pages_patients_url
    assert_response :success
  end

end
