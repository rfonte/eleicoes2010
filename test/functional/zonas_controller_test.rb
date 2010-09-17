require 'test_helper'

class ZonasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zonas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zona" do
    assert_difference('Zona.count') do
      post :create, :zona => { }
    end

    assert_redirected_to zona_path(assigns(:zona))
  end

  test "should show zona" do
    get :show, :id => zonas(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => zonas(:one).id
    assert_response :success
  end

  test "should update zona" do
    put :update, :id => zonas(:one).id, :zona => { }
    assert_redirected_to zona_path(assigns(:zona))
  end

  test "should destroy zona" do
    assert_difference('Zona.count', -1) do
      delete :destroy, :id => zonas(:one).id
    end

    assert_redirected_to zonas_path
  end
end
