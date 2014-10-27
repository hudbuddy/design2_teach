require 'test_helper'

class YoutubeChannelsControllerTest < ActionController::TestCase
  setup do
    @youtube_channel = youtube_channels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:youtube_channels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create youtube_channel" do
    assert_difference('YoutubeChannel.count') do
      post :create, youtube_channel: { deleted_at: @youtube_channel.deleted_at, profile_id: @youtube_channel.profile_id, title: @youtube_channel.title, url: @youtube_channel.url }
    end

    assert_redirected_to youtube_channel_path(assigns(:youtube_channel))
  end

  test "should show youtube_channel" do
    get :show, id: @youtube_channel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @youtube_channel
    assert_response :success
  end

  test "should update youtube_channel" do
    patch :update, id: @youtube_channel, youtube_channel: { deleted_at: @youtube_channel.deleted_at, profile_id: @youtube_channel.profile_id, title: @youtube_channel.title, url: @youtube_channel.url }
    assert_redirected_to youtube_channel_path(assigns(:youtube_channel))
  end

  test "should destroy youtube_channel" do
    assert_difference('YoutubeChannel.count', -1) do
      delete :destroy, id: @youtube_channel
    end

    assert_redirected_to youtube_channels_path
  end
end
