class UsersController < ApplicationController
    before_action :authenticate_user!
    
    def show
        @user = User.find_by_id(params[:id])
        @albums =  @user.albums.order('id DESC');
        @shares = @user.shares.order('id DESC');
    end
    
    def my_profile
        @albums =  current_user.albums
        @shares = current_user.shares
    end
end