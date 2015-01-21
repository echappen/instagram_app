class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email])
    session[:user_id] = @user.id
    redirect_to root_path
  end
end
