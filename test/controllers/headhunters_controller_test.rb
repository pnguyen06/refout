require 'test_helper'

class HeadhuntersControllerTest < ActionController::TestCase
  setup do
    @headhunter = headhunters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:headhunters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create headhunter" do
    assert_difference('Headhunter.count') do
      post :create, headhunter: { CompanyDescription: @headhunter.CompanyDescription, CompanyEmail: @headhunter.CompanyEmail, CompanyName: @headhunter.CompanyName }
    end

    assert_redirected_to headhunter_path(assigns(:headhunter))
  end

  test "should show headhunter" do
    get :show, id: @headhunter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @headhunter
    assert_response :success
  end

  test "should update headhunter" do
    patch :update, id: @headhunter, headhunter: { CompanyDescription: @headhunter.CompanyDescription, CompanyEmail: @headhunter.CompanyEmail, CompanyName: @headhunter.CompanyName }
    assert_redirected_to headhunter_path(assigns(:headhunter))
  end

  test "should destroy headhunter" do
    assert_difference('Headhunter.count', -1) do
      delete :destroy, id: @headhunter
    end

    assert_redirected_to headhunters_path
  end
end
