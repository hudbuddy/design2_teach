class LearningPiecesController < ApplicationController
  load_and_authorize_resource
  before_action :set_learning_piece, only: [:show, :edit, :update, :destroy]

  # GET /learning_pieces
  # GET /learning_pieces.json
  def index
    @learning_pieces = LearningPiece.all
  end

  # GET /learning_pieces/1
  # GET /learning_pieces/1.json
  def show
  end

  # GET /learning_pieces/new
  def new
    @learning_piece = LearningPiece.new
  end

  # GET /learning_pieces/1/edit
  def edit
  end

  # POST /learning_pieces
  # POST /learning_pieces.json
  def create
    @learning_piece = LearningPiece.new(learning_piece_params)

    respond_to do |format|
      if @learning_piece.save
        format.html { redirect_to @learning_piece, notice: 'Learning piece was successfully created.' }
        format.json { render :show, status: :created, location: @learning_piece }
      else
        format.html { render :new }
        format.json { render json: @learning_piece.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /learning_pieces/1
  # PATCH/PUT /learning_pieces/1.json
  def update
    respond_to do |format|
      if @learning_piece.update(learning_piece_params)
        format.html { redirect_to @learning_piece, notice: 'Learning piece was successfully updated.' }
        format.json { render :show, status: :ok, location: @learning_piece }
      else
        format.html { render :edit }
        format.json { render json: @learning_piece.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /learning_pieces/1
  # DELETE /learning_pieces/1.json
  def destroy
    @learning_piece.destroy
    respond_to do |format|
      format.html { redirect_to learning_pieces_url, notice: 'Learning piece was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_learning_piece
      @learning_piece = LearningPiece.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    # Never trust parameters from the scary internet, only allow the white list through.
    def learning_piece_params
      params.require(:learning_piece).permit(:title, :description_short, :description_long, :youtube_url, :picture, :user_id)
    end
end
