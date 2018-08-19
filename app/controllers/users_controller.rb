class UsersController < ApplicationController
    before_action :authenticate_user!
    
    def show
        @user = User.find_by_id(params[:id])
        @albums =  @user.albums
        @shares = @user.shares
    end
    
    def my_profile
        @albums =  current_user.albums
        @shares = current_user.shares
    end
end