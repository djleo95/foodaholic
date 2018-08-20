class SearchsController < ApplicationController
  def index
    @albums = Album.all.order(all_interact_count: :desc).limit(40)
  end

  def show
    if params[:search].present?
      q = params[:search][:q]
      @users = User.ransack(name_or_email_cont: q).result
      @albums  = Album.ransack(title_or_content_ingredient_cont: q).result
    else
      @users = User.all
      @albums = Album.all
    end

    #
    # @ranking = Image.order(all_interact_count: :desc)
  end
end