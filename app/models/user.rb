class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable
  belongs_to :user_type
  has_one :profile
  has_many :workshops
  has_many :learning_pieces
  has_many :presentations

  def to_label
    self.email
  end

  def self.consultants
    consultants = []
    users = User.all
    users.each do |u|
      if u.user_type && u.is_consultant
        consultants << u
      end
    end
    consultants
  end

  def is_consultant
    return !self.user_type.nil? && (self.is_superadmin || self.is_admin || self.user_type.title === 'consultant')
  end

  def is_admin
    return !self.user_type.nil? && (self.is_superadmin || self.user_type.title === 'admin')
  end

  def is_superadmin
    return !self.user_type.nil? && self.user_type.title === 'superadmin'
  end

end
