class LearningPiece < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :topics, join_table: 'learning_pieces_topics'
end