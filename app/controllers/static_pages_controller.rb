class StaticPagesController < ApplicationController
  def home
    q = params[:q]
    @users = User.ransack(name_cont: q).result
    @albums  = Album.ransack(title_cont: q).result
  end
end
