require 'test_helper'

class SecaosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:secaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create secao" do
    assert_difference('Secao.count') do
      post :create, :secao => { }
    end

    assert_redirected_to secao_path(assigns(:secao))
  end

  test "should show secao" do
    get :show, :id => secaos(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => secaos(:one).id
    assert_response :success
  end

  test "should update secao" do
    put :update, :id => secaos(:one).id, :secao => { }
    assert_redirected_to secao_path(assigns(:secao))
  end

  test "should destroy secao" do
    assert_difference('Secao.count', -1) do
      delete :destroy, :id => secaos(:one).id
    end

    assert_redirected_to secaos_path
  end
end
