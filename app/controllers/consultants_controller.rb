class ConsultantsController < ApplicationController
  layout :resolve_layout

  def index
    @consultants = User.consultants
  end

  def show
    @user = User.find(params[:id])
    redirect_to @user.profile
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

  private

  def resolve_layout
    case action_name
      when 'new', 'edit'
        'admin'
      when 'index'
        'list'
      else
        'item'
    end
  end

end
