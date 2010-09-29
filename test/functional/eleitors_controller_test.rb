require 'test_helper'

class EleitorsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eleitors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eleitor" do
    assert_difference('Eleitor.count') do
      post :create, :eleitor => { }
    end

    assert_redirected_to eleitor_path(assigns(:eleitor))
  end

  test "should show eleitor" do
    get :show, :id => eleitors(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => eleitors(:one).id
    assert_response :success
  end

  test "should update eleitor" do
    put :update, :id => eleitors(:one).id, :eleitor => { }
    assert_redirected_to eleitor_path(assigns(:eleitor))
  end

  test "should destroy eleitor" do
    assert_difference('Eleitor.count', -1) do
      delete :destroy, :id => eleitors(:one).id
    end

    assert_redirected_to eleitors_path
  end
end
