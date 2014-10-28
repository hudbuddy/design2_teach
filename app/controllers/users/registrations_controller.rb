class Users::RegistrationsController < Devise::RegistrationsController
  include ApplicationHelper

  def create
    super do
      resource.user_types.create(type: 'superadmin');
      resource.save
    end
  end

  def new
    super
  end

  def edit
    super
  end
end
