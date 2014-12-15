class LearningPiece < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :topics, join_table: 'learning_pieces_topics'
  has_many :article_images
  mount_uploader :avatar, AvatarUploader
  mount_uploader :lpimage, LpimageUploader
  accepts_nested_attributes_for :topics
  accepts_nested_attributes_for :article_images
end