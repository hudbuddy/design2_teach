require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post :create, profile: { background_picture: @profile.background_picture, bio: @profile.bio, deleted_at: @profile.deleted_at, facebook_url: @profile.facebook_url, first_name: @profile.first_name, last_name: @profile.last_name, linkedin_url: @profile.linkedin_url, personal_site_url: @profile.personal_site_url, profile_picture: @profile.profile_picture, twitter_url: @profile.twitter_url, user_id: @profile.user_id }
    end

    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should show profile" do
    get :show, id: @profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profile
    assert_response :success
  end

  test "should update profile" do
    patch :update, id: @profile, profile: { background_picture: @profile.background_picture, bio: @profile.bio, deleted_at: @profile.deleted_at, facebook_url: @profile.facebook_url, first_name: @profile.first_name, last_name: @profile.last_name, linkedin_url: @profile.linkedin_url, personal_site_url: @profile.personal_site_url, profile_picture: @profile.profile_picture, twitter_url: @profile.twitter_url, user_id: @profile.user_id }
    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete :destroy, id: @profile
    end

    assert_redirected_to profiles_path
  end
end
