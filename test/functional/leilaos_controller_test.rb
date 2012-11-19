require 'test_helper'

class LeilaosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leilaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create leilao" do
    assert_difference('Leilao.count') do
      post :create, :leilao => { }
    end

    assert_redirected_to leilao_path(assigns(:leilao))
  end

  test "should show leilao" do
    get :show, :id => leilaos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => leilaos(:one).to_param
    assert_response :success
  end

  test "should update leilao" do
    put :update, :id => leilaos(:one).to_param, :leilao => { }
    assert_redirected_to leilao_path(assigns(:leilao))
  end

  test "should destroy leilao" do
    assert_difference('Leilao.count', -1) do
      delete :destroy, :id => leilaos(:one).to_param
    end

    assert_redirected_to leilaos_path
  end
end
