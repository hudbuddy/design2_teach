class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :presentations
  has_many :workshops
end
