class Topic < ActiveRecord::Base
  has_and_belongs_to_many :learning_pieces, join_table: 'learning_pieces_topics'
  accepts_nested_attributes_for :learning_pieces
end
