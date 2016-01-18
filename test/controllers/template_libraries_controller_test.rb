require 'test_helper'

class TemplateLibrariesControllerTest < ActionController::TestCase
  setup do
    @template_library = template_libraries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:template_libraries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create template_library" do
    assert_difference('TemplateLibrary.count') do
      post :create, template_library: {  }
    end

    assert_redirected_to template_library_path(assigns(:template_library))
  end

  test "should show template_library" do
    get :show, id: @template_library
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @template_library
    assert_response :success
  end

  test "should update template_library" do
    patch :update, id: @template_library, template_library: {  }
    assert_redirected_to template_library_path(assigns(:template_library))
  end

  test "should destroy template_library" do
    assert_difference('TemplateLibrary.count', -1) do
      delete :destroy, id: @template_library
    end

    assert_redirected_to template_libraries_path
  end
end
