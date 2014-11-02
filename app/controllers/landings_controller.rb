class LandingsController < ApplicationController
  def index
    @learning_pieces = LearningPiece.all
    @products = Product.all
    @consultants = User.consultants;
  end
end
