class ConsultantsController < ApplicationController

  def index
    @consultants = User.consultants
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
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
end
