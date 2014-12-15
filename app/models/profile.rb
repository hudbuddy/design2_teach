class Profile < ActiveRecord::Base
  belongs_to :user
  mount_uploader :profileback, ProfilebackUploader
  mount_uploader :profileimage, ProfileimageUploader
  has_many :youtube_channels
  has_many :links
end
