require 'test_helper'

class PeticionsControllerTest < ActionController::TestCase
  setup do
    @peticion = peticions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:peticions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create peticion" do
    assert_difference('Peticion.count') do
      post :create, peticion: { email: @peticion.email, fechadesde: @peticion.fechadesde, fechahasta: @peticion.fechahasta, status: @peticion.status, tipo: @peticion.tipo }
    end

    assert_redirected_to peticion_path(assigns(:peticion))
  end

  test "should show peticion" do
    get :show, id: @peticion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @peticion
    assert_response :success
  end

  test "should update peticion" do
    patch :update, id: @peticion, peticion: { email: @peticion.email, fechadesde: @peticion.fechadesde, fechahasta: @peticion.fechahasta, status: @peticion.status, tipo: @peticion.tipo }
    assert_redirected_to peticion_path(assigns(:peticion))
  end

  test "should destroy peticion" do
    assert_difference('Peticion.count', -1) do
      delete :destroy, id: @peticion
    end

    assert_redirected_to peticions_path
  end
end
