require 'test_helper'

class DoctersControllerTest < ActionController::TestCase
  setup do
    @docter = docters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:docters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create docter" do
    assert_difference('Docter.count') do
      post :create, docter: { address: @docter.address, name: @docter.name }
    end

    assert_redirected_to docter_path(assigns(:docter))
  end

  test "should show docter" do
    get :show, id: @docter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @docter
    assert_response :success
  end

  test "should update docter" do
    patch :update, id: @docter, docter: { address: @docter.address, name: @docter.name }
    assert_redirected_to docter_path(assigns(:docter))
  end

  test "should destroy docter" do
    assert_difference('Docter.count', -1) do
      delete :destroy, id: @docter
    end

    assert_redirected_to docters_path
  end
end
