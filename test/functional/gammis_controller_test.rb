require 'test_helper'

class GammisControllerTest < ActionController::TestCase
  setup do
    @gammi = gammis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gammis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gammi" do
    assert_difference('Gammi.count') do
      post :create, gammi: { name: @gammi.name }
    end

    assert_redirected_to gammi_path(assigns(:gammi))
  end

  test "should show gammi" do
    get :show, id: @gammi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gammi
    assert_response :success
  end

  test "should update gammi" do
    put :update, id: @gammi, gammi: { name: @gammi.name }
    assert_redirected_to gammi_path(assigns(:gammi))
  end

  test "should destroy gammi" do
    assert_difference('Gammi.count', -1) do
      delete :destroy, id: @gammi
    end

    assert_redirected_to gammis_path
  end
end
