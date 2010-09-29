require 'test_helper'

class CandidatosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:candidatos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create candidato" do
    assert_difference('Candidato.count') do
      post :create, :candidato => { }
    end

    assert_redirected_to candidato_path(assigns(:candidato))
  end

  test "should show candidato" do
    get :show, :id => candidatos(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => candidatos(:one).id
    assert_response :success
  end

  test "should update candidato" do
    put :update, :id => candidatos(:one).id, :candidato => { }
    assert_redirected_to candidato_path(assigns(:candidato))
  end

  test "should destroy candidato" do
    assert_difference('Candidato.count', -1) do
      delete :destroy, :id => candidatos(:one).id
    end

    assert_redirected_to candidatos_path
  end
end
