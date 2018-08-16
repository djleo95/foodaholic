class StaticPagesController < ApplicationController
  def home
    @albums = Album.all
    @search = User.ransack(params[:q])
    @users = @search.result 
  end
end
