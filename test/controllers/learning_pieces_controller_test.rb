require 'test_helper'

class LearningPiecesControllerTest < ActionController::TestCase
  setup do
    @learning_piece = learning_pieces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:learning_pieces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create learning_piece" do
    assert_difference('LearningPiece.count') do
      post :create, learning_piece: { deleted_at: @learning_piece.deleted_at, description_long: @learning_piece.description_long, description_short: @learning_piece.description_short, title: @learning_piece.title, youtube_url: @learning_piece.youtube_url }
    end

    assert_redirected_to learning_piece_path(assigns(:learning_piece))
  end

  test "should show learning_piece" do
    get :show, id: @learning_piece
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @learning_piece
    assert_response :success
  end

  test "should update learning_piece" do
    patch :update, id: @learning_piece, learning_piece: { deleted_at: @learning_piece.deleted_at, description_long: @learning_piece.description_long, description_short: @learning_piece.description_short, title: @learning_piece.title, youtube_url: @learning_piece.youtube_url }
    assert_redirected_to learning_piece_path(assigns(:learning_piece))
  end

  test "should destroy learning_piece" do
    assert_difference('LearningPiece.count', -1) do
      delete :destroy, id: @learning_piece
    end

    assert_redirected_to learning_pieces_path
  end
end
