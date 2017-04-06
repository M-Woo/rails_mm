require 'test_helper'

class PartyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get party_index_url
    assert_response :success
  end

  test "should get new" do
    get party_new_url
    assert_response :success
  end

  test "should get edit" do
    get party_edit_url
    assert_response :success
  end

end
