require 'test_helper'

class KomentarzsControllerTest < ActionController::TestCase
  setup do
    @komentarz = komentarzs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:komentarzs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create komentarz" do
    assert_difference('Komentarz.count') do
      post :create, komentarz: @komentarz.attributes
    end

    assert_redirected_to komentarz_path(assigns(:komentarz))
  end

  test "should show komentarz" do
    get :show, id: @komentarz
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @komentarz
    assert_response :success
  end

  test "should update komentarz" do
    put :update, id: @komentarz, komentarz: @komentarz.attributes
    assert_redirected_to komentarz_path(assigns(:komentarz))
  end

  test "should destroy komentarz" do
    assert_difference('Komentarz.count', -1) do
      delete :destroy, id: @komentarz
    end

    assert_redirected_to komentarzs_path
  end
end
