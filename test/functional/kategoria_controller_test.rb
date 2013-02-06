require 'test_helper'

class KategoriaControllerTest < ActionController::TestCase
  setup do
    @kategorium = kategoria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kategoria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kategorium" do
    assert_difference('Kategorium.count') do
      post :create, kategorium: @kategorium.attributes
    end

    assert_redirected_to kategorium_path(assigns(:kategorium))
  end

  test "should show kategorium" do
    get :show, id: @kategorium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kategorium
    assert_response :success
  end

  test "should update kategorium" do
    put :update, id: @kategorium, kategorium: @kategorium.attributes
    assert_redirected_to kategorium_path(assigns(:kategorium))
  end

  test "should destroy kategorium" do
    assert_difference('Kategorium.count', -1) do
      delete :destroy, id: @kategorium
    end

    assert_redirected_to kategoria_path
  end
end
