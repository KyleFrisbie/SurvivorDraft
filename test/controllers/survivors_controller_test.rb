require 'test_helper'

class SurvivorsControllerTest < ActionController::TestCase
  setup do
    @survivor = survivors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:survivors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survivor" do
    assert_difference('Survivor.count') do
      post :create, survivor: { elimination_number: @survivor.elimination_number, name: @survivor.name, photo_url: @survivor.photo_url, tribe_id: @survivor.tribe_id }
    end

    assert_redirected_to survivor_path(assigns(:survivor))
  end

  test "should show survivor" do
    get :show, id: @survivor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @survivor
    assert_response :success
  end

  test "should update survivor" do
    patch :update, id: @survivor, survivor: { elimination_number: @survivor.elimination_number, name: @survivor.name, photo_url: @survivor.photo_url, tribe_id: @survivor.tribe_id }
    assert_redirected_to survivor_path(assigns(:survivor))
  end

  test "should destroy survivor" do
    assert_difference('Survivor.count', -1) do
      delete :destroy, id: @survivor
    end

    assert_redirected_to survivors_path
  end
end
