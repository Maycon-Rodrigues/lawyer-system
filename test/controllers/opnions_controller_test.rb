require 'test_helper'

class OpnionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @opnion = opnions(:one)
  end

  test "should get index" do
    get opnions_url
    assert_response :success
  end

  test "should get new" do
    get new_opnion_url
    assert_response :success
  end

  test "should create opnion" do
    assert_difference('Opnion.count') do
      post opnions_url, params: { opnion: { customer_id: @opnion.customer_id, opnion: @opnion.opnion, pprocess_id: @opnion.pprocess_id, user_id: @opnion.user_id } }
    end

    assert_redirected_to opnion_url(Opnion.last)
  end

  test "should show opnion" do
    get opnion_url(@opnion)
    assert_response :success
  end

  test "should get edit" do
    get edit_opnion_url(@opnion)
    assert_response :success
  end

  test "should update opnion" do
    patch opnion_url(@opnion), params: { opnion: { customer_id: @opnion.customer_id, opnion: @opnion.opnion, pprocess_id: @opnion.pprocess_id, user_id: @opnion.user_id } }
    assert_redirected_to opnion_url(@opnion)
  end

  test "should destroy opnion" do
    assert_difference('Opnion.count', -1) do
      delete opnion_url(@opnion)
    end

    assert_redirected_to opnions_url
  end
end
