require 'test_helper'

class ListToDosControllerTest < ActionController::TestCase
  setup do
    @list_to_do = list_to_dos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:list_to_dos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create list_to_do" do
    assert_difference('ListToDo.count') do
      post :create, list_to_do: { task: @list_to_do.task }
    end

    assert_redirected_to list_to_do_path(assigns(:list_to_do))
  end

  test "should show list_to_do" do
    get :show, id: @list_to_do
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @list_to_do
    assert_response :success
  end

  test "should update list_to_do" do
    put :update, id: @list_to_do, list_to_do: { task: @list_to_do.task }
    assert_redirected_to list_to_do_path(assigns(:list_to_do))
  end

  test "should destroy list_to_do" do
    assert_difference('ListToDo.count', -1) do
      delete :destroy, id: @list_to_do
    end

    assert_redirected_to list_to_dos_path
  end
end
