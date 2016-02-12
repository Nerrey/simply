require 'test_helper'

class WordClassesControllerTest < ActionController::TestCase
  setup do
    @word_class = word_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:word_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create word_class" do
    assert_difference('WordClass.count') do
      post :create, word_class: {  }
    end

    assert_redirected_to word_class_path(assigns(:word_class))
  end

  test "should show word_class" do
    get :show, id: @word_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @word_class
    assert_response :success
  end

  test "should update word_class" do
    patch :update, id: @word_class, word_class: {  }
    assert_redirected_to word_class_path(assigns(:word_class))
  end

  test "should destroy word_class" do
    assert_difference('WordClass.count', -1) do
      delete :destroy, id: @word_class
    end

    assert_redirected_to word_classes_path
  end
end
