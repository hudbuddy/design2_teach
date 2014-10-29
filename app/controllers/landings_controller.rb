class LandingsController < ApplicationController
  def index
    @learning_pieces = LearningPiece.all
    @consultants = [];
    users = User.all
    users.each do |u|
      if u.user_type.title === 'consultant'
        @consultants << u
      end
    end
  end
end
