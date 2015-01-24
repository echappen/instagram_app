class UsersController < ApplicationController
  def new
  end
  def create
  end
  def show
    @user = User.find(params[:user_id])
  end
  end
