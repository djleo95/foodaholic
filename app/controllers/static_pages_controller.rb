class StaticPagesController < ApplicationController
  def home
    @albums = Album.all.order('id DESC');
    @shares = Share.where(shareable_type: 'Album');
    # @shared_albums = Album.where(id: @shares.ids)
  end
end
