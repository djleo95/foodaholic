class StaticPagesController < ApplicationController
  def home
    # q = params[:q]
    # @users = User.ransack(name_cont: q).result
    # @albums  = Album.ransack(title_cont: q).result
    #
    # @ranking = Image.order(all_interact_count: :desc)
    @albums = Album.all.order('id DESC');
    @shares = Share.where(shareable_type: 'Album');
    # @shared_albums = Album.where(id: @shares.ids)
  end
end
