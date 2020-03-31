require 'test_helper'

class PatientControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get patient_home_url
    assert_response :success
  end

end
