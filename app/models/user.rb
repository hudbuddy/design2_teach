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
      if u.user_type && (u.user_type.title === 'consultant' || u.user_type.title === 'admin' || u.user_type.title === 'superadmin')
        consultants << u
      end
    end
    consultants
  end

end
