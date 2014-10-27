class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :presentations
  has_many :workshops
  has_many :youtube_channels
end
