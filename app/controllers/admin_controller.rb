class AdminController < ApplicationController
  include Devise::Controllers::ScopedViews
  helper DeviseHelper

  def index

    @learning_piece = LearningPiece.new
    @product = Product.new
    @user = User.new
    authorize! :manage, @user
  end

  def create_user
    @user = User.new(user_params)
    @user_type = UserType.create(title: "superadmin")
    @user.user_type = @user_type
    if(@user.valid?)
      @user.save
      render :action => "index"
    else
      render :action => "index"
    end

  end

private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
