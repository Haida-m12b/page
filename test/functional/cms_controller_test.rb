require 'test_helper'

class CmsControllerTest < ActionController::TestCase
  setup do
    @cm = cms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cm" do
    assert_difference('Cm.count') do
      post :create, cm: @cm.attributes
    end

    assert_redirected_to cm_path(assigns(:cm))
  end

  test "should show cm" do
    get :show, id: @cm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cm
    assert_response :success
  end

  test "should update cm" do
    put :update, id: @cm, cm: @cm.attributes
    assert_redirected_to cm_path(assigns(:cm))
  end

  test "should destroy cm" do
    assert_difference('Cm.count', -1) do
      delete :destroy, id: @cm
    end

    assert_redirected_to cms_path
  end
end
