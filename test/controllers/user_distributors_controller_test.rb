require 'test_helper'

class UserDistributorsControllerTest < ActionController::TestCase
  setup do
    @user_distributor = user_distributors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_distributors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_distributor" do
    assert_difference('UserDistributor.count') do
      post :create, user_distributor: { belongs_to: @user_distributor.belongs_to }
    end

    assert_redirected_to user_distributor_path(assigns(:user_distributor))
  end

  test "should show user_distributor" do
    get :show, id: @user_distributor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_distributor
    assert_response :success
  end

  test "should update user_distributor" do
    patch :update, id: @user_distributor, user_distributor: { belongs_to: @user_distributor.belongs_to }
    assert_redirected_to user_distributor_path(assigns(:user_distributor))
  end

  test "should destroy user_distributor" do
    assert_difference('UserDistributor.count', -1) do
      delete :destroy, id: @user_distributor
    end

    assert_redirected_to user_distributors_path
  end
end
