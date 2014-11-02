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
    @user.profile = Profile.create()
    if(@user.valid?)
      @user.save
      render :action => "index"
    else
      render :action => "index"
    end

  end

private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :user_type_id)
  end

end
