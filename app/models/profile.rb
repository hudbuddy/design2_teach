class Profile < ActiveRecord::Base
  belongs_to :user

  has_many :youtube_channels
  has_many :links
end
