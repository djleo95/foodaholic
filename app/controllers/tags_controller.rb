class TagsController < ApplicationController
  def show
    if params[:id] == "-1"
      @albums = Album.where(tag_id: nil)
    else
      @albums = Album.where(tag_id: params[:id])
    end
  end
end