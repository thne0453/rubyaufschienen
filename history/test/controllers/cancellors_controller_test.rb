require 'test_helper'

class CancellorsControllerTest < ActionController::TestCase
  setup do
    @cancellor = cancellors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cancellors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cancellor" do
    assert_difference('Cancellor.count') do
      post :create, cancellor: { birthday: @cancellor.birthday, first_name: @cancellor.first_name, last_name: @cancellor.last_name }
    end

    assert_redirected_to cancellor_path(assigns(:cancellor))
  end

  test "should show cancellor" do
    get :show, id: @cancellor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cancellor
    assert_response :success
  end

  test "should update cancellor" do
    patch :update, id: @cancellor, cancellor: { birthday: @cancellor.birthday, first_name: @cancellor.first_name, last_name: @cancellor.last_name }
    assert_redirected_to cancellor_path(assigns(:cancellor))
  end

  test "should destroy cancellor" do
    assert_difference('Cancellor.count', -1) do
      delete :destroy, id: @cancellor
    end

    assert_redirected_to cancellors_path
  end
end
