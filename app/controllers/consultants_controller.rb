class ConsultantsController < ApplicationController
  def index
    @consultants = User.consultants;
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new
  end
end
