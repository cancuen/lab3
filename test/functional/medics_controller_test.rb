require 'test_helper'

class MedicsControllerTest < ActionController::TestCase
  setup do
    @medic = medics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medic" do
    assert_difference('Medic.count') do
      post :create, :medic => @medic.attributes
    end

    assert_redirected_to medic_path(assigns(:medic))
  end

  test "should show medic" do
    get :show, :id => @medic.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @medic.to_param
    assert_response :success
  end

  test "should update medic" do
    put :update, :id => @medic.to_param, :medic => @medic.attributes
    assert_redirected_to medic_path(assigns(:medic))
  end

  test "should destroy medic" do
    assert_difference('Medic.count', -1) do
      delete :destroy, :id => @medic.to_param
    end

    assert_redirected_to medics_path
  end
end
