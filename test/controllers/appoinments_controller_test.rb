require 'test_helper'

class AppoinmentsControllerTest < ActionController::TestCase
  setup do
    @appoinment = appoinments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:appoinments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create appoinment" do
    assert_difference('Appoinment.count') do
      post :create, appoinment: { docter_id: @appoinment.docter_id, patient_id: @appoinment.patient_id }
    end

    assert_redirected_to appoinment_path(assigns(:appoinment))
  end

  test "should show appoinment" do
    get :show, id: @appoinment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @appoinment
    assert_response :success
  end

  test "should update appoinment" do
    patch :update, id: @appoinment, appoinment: { docter_id: @appoinment.docter_id, patient_id: @appoinment.patient_id }
    assert_redirected_to appoinment_path(assigns(:appoinment))
  end

  test "should destroy appoinment" do
    assert_difference('Appoinment.count', -1) do
      delete :destroy, id: @appoinment
    end

    assert_redirected_to appoinments_path
  end
end
