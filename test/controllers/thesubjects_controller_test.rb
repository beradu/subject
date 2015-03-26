require 'test_helper'

class ThesubjectsControllerTest < ActionController::TestCase
  setup do
    @thesubject = thesubjects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thesubjects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thesubject" do
    assert_difference('Thesubject.count') do
      post :create, thesubject: { age: @thesubject.age, subNumber: @thesubject.subNumber }
    end

    assert_redirected_to thesubject_path(assigns(:thesubject))
  end

  test "should show thesubject" do
    get :show, id: @thesubject
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thesubject
    assert_response :success
  end

  test "should update thesubject" do
    patch :update, id: @thesubject, thesubject: { age: @thesubject.age, subNumber: @thesubject.subNumber }
    assert_redirected_to thesubject_path(assigns(:thesubject))
  end

  test "should destroy thesubject" do
    assert_difference('Thesubject.count', -1) do
      delete :destroy, id: @thesubject
    end

    assert_redirected_to thesubjects_path
  end
end
