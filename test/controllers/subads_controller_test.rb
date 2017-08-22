require 'test_helper'

class SubadsControllerTest < ActionController::TestCase
  setup do
    @subad = subads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subad" do
    assert_difference('Subad.count') do
      post :create, subad: {  }
    end

    assert_redirected_to subad_path(assigns(:subad))
  end

  test "should show subad" do
    get :show, id: @subad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subad
    assert_response :success
  end

  test "should update subad" do
    patch :update, id: @subad, subad: {  }
    assert_redirected_to subad_path(assigns(:subad))
  end

  test "should destroy subad" do
    assert_difference('Subad.count', -1) do
      delete :destroy, id: @subad
    end

    assert_redirected_to subads_path
  end
end
