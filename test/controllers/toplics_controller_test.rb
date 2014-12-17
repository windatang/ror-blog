require 'test_helper'

class ToplicsControllerTest < ActionController::TestCase
  setup do
    @toplic = toplics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:toplics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create toplic" do
    assert_difference('Toplic.count') do
      post :create, toplic: { description: @toplic.description, linkwith: @toplic.linkwith, title: @toplic.title }
    end

    assert_redirected_to toplic_path(assigns(:toplic))
  end

  test "should show toplic" do
    get :show, id: @toplic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @toplic
    assert_response :success
  end

  test "should update toplic" do
    patch :update, id: @toplic, toplic: { description: @toplic.description, linkwith: @toplic.linkwith, title: @toplic.title }
    assert_redirected_to toplic_path(assigns(:toplic))
  end

  test "should destroy toplic" do
    assert_difference('Toplic.count', -1) do
      delete :destroy, id: @toplic
    end

    assert_redirected_to toplics_path
  end
end
