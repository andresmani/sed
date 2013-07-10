require 'test_helper'

class TpodocumentosControllerTest < ActionController::TestCase
  setup do
    @tpodocumento = tpodocumentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tpodocumentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tpodocumento" do
    assert_difference('Tpodocumento.count') do
      post :create, tpodocumento: { nombre: @tpodocumento.nombre }
    end

    assert_redirected_to tpodocumento_path(assigns(:tpodocumento))
  end

  test "should show tpodocumento" do
    get :show, id: @tpodocumento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tpodocumento
    assert_response :success
  end

  test "should update tpodocumento" do
    put :update, id: @tpodocumento, tpodocumento: { nombre: @tpodocumento.nombre }
    assert_redirected_to tpodocumento_path(assigns(:tpodocumento))
  end

  test "should destroy tpodocumento" do
    assert_difference('Tpodocumento.count', -1) do
      delete :destroy, id: @tpodocumento
    end

    assert_redirected_to tpodocumentos_path
  end
end
