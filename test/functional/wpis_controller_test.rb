require 'test_helper'

class WpisControllerTest < ActionController::TestCase
  setup do
    @wpi = wpis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wpis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wpi" do
    assert_difference('Wpi.count') do
      post :create, wpi: @wpi.attributes
    end

    assert_redirected_to wpi_path(assigns(:wpi))
  end

  test "should show wpi" do
    get :show, id: @wpi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wpi
    assert_response :success
  end

  test "should update wpi" do
    put :update, id: @wpi, wpi: @wpi.attributes
    assert_redirected_to wpi_path(assigns(:wpi))
  end

  test "should destroy wpi" do
    assert_difference('Wpi.count', -1) do
      delete :destroy, id: @wpi
    end

    assert_redirected_to wpis_path
  end
end
