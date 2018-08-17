class UsersController < ApplicationController

    def show
        @user = User.find_by_id(params[:id])
        @albums =  @user.albums
        @shares = @user.shares
    end
end