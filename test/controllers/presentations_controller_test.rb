require 'test_helper'

class PresentationsControllerTest < ActionController::TestCase
  setup do
    @presentation = presentations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:presentations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create presentation" do
    assert_difference('Presentation.count') do
      post :create, presentation: { deleted_at: @presentation.deleted_at, description: @presentation.description, link_url: @presentation.link_url, picture_url: @presentation.picture_url, profile_id: @presentation.profile_id, title: @presentation.title }
    end

    assert_redirected_to presentation_path(assigns(:presentation))
  end

  test "should show presentation" do
    get :show, id: @presentation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @presentation
    assert_response :success
  end

  test "should update presentation" do
    patch :update, id: @presentation, presentation: { deleted_at: @presentation.deleted_at, description: @presentation.description, link_url: @presentation.link_url, picture_url: @presentation.picture_url, profile_id: @presentation.profile_id, title: @presentation.title }
    assert_redirected_to presentation_path(assigns(:presentation))
  end

  test "should destroy presentation" do
    assert_difference('Presentation.count', -1) do
      delete :destroy, id: @presentation
    end

    assert_redirected_to presentations_path
  end
end
