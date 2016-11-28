require 'test_helper'

class PprocessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pprocess = pprocesses(:one)
  end

  test "should get index" do
    get pprocesses_url
    assert_response :success
  end

  test "should get new" do
    get new_pprocess_url
    assert_response :success
  end

  test "should create pprocess" do
    assert_difference('Pprocess.count') do
      post pprocesses_url, params: { pprocess: { customer_id: @pprocess.customer_id, process: @pprocess.process } }
    end

    assert_redirected_to pprocess_url(Pprocess.last)
  end

  test "should show pprocess" do
    get pprocess_url(@pprocess)
    assert_response :success
  end

  test "should get edit" do
    get edit_pprocess_url(@pprocess)
    assert_response :success
  end

  test "should update pprocess" do
    patch pprocess_url(@pprocess), params: { pprocess: { customer_id: @pprocess.customer_id, process: @pprocess.process } }
    assert_redirected_to pprocess_url(@pprocess)
  end

  test "should destroy pprocess" do
    assert_difference('Pprocess.count', -1) do
      delete pprocess_url(@pprocess)
    end

    assert_redirected_to pprocesses_url
  end
end
