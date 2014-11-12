require 'test_helper'

class DirectoresControllerTest < ActionController::TestCase
  setup do
    @director = directores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:directores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create director" do
    assert_difference('Director.count') do
      post :create, director: { apellido: @director.apellido, direccion: @director.direccion, nombre: @director.nombre, telefono: @director.telefono }
    end

    assert_redirected_to director_path(assigns(:director))
  end

  test "should show director" do
    get :show, id: @director
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @director
    assert_response :success
  end

  test "should update director" do
    patch :update, id: @director, director: { apellido: @director.apellido, direccion: @director.direccion, nombre: @director.nombre, telefono: @director.telefono }
    assert_redirected_to director_path(assigns(:director))
  end

  test "should destroy director" do
    assert_difference('Director.count', -1) do
      delete :destroy, id: @director
    end

    assert_redirected_to directores_path
  end
end
