class UsersController < ApplicationController
    before_action :authenticate_user!
    
    def show
        @user = User.find_by_id(params[:id])
        @albums =  @user.albums
        @shares = @user.shares
    end
    
    def my_profile
    end
end