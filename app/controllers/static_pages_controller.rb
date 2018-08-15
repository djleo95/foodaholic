class StaticPagesController < ApplicationController
  def home
    @albums = Album.all
    @search = User.search(param[:q])
    @users = @search.result 
  end
end
