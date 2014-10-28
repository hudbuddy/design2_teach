class Users::RegistrationsController < Devise::RegistrationsController
  include ApplicationHelper

  def create
    super do
      resource.save
      @user = User.find_by_id(resource.id)
      @user_type = UserType.create(title: "superadmin")
      @user.user_type = @user_type

    end
  end

  def new
    super
  end

  def edit
    super
  end
end
