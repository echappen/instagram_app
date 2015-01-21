class AlbumsController < ApplicationController

  def show

  end

  def new
    @album = Album.new()
  end

  def create
    @album = Album.new(params[:album])
    @album.user_id = current_user.id
    redirect_to root
  end


end
