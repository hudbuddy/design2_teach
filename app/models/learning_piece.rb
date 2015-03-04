class LearningPiece < ActiveRecord::Base
  belongs_to :user
  belongs_to :topic
  has_many :article_images
  mount_uploader :avatar, AvatarUploader
  mount_uploader :lpimage, LpimageUploader
  accepts_nested_attributes_for :article_images
end