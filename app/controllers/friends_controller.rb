class FriendsController < ApplicationController
    def create
        @friend = Friend.new(friend_params)
        @friend2 = Friend.new(friend2_params)

        respond_to do |format|
          if @friend.save && @friend2.save
            format.html { redirect_to user_path(@friend.friend_id), notice: 'Friend was successfully created.' }
          else
            format.html { render :new }
          end
        end
    end
    
    def destroy
      friend = Friend.where(user_id: params[:id], friend_id: current_user.id)
      friend2 = Friend.where(user_id: current_user.id, friend_id: params[:id])
      
      friend.each do |f|
        f.destroy
      end
      
      friend2.each do |f|
        f.destroy
      end
      
      
      respond_to do |format|
        format.html { redirect_to user_path(params[:id]), notice: 'Friend was successfully destroyed.' }
      end
    end
    
    private
    def friend_params
        params[:friend][:user_id] = current_user.id
        params.require(:friend).permit(:friend_id, :user_id)
    end
    
    def friend2_params
        params[:friend][:user_id] = params[:friend][:friend_id]
        params[:friend][:friend_id] = current_user.id
        params.require(:friend).permit(:friend_id, :user_id)
    end
end