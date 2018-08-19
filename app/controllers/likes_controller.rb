class LikesController < ApplicationController
    def create
        @like = Like.new(like_params)

        if params[:like][:redirect].present?
            redirect = params[:like][:redirect]
        else
            redirect = root_path
        end
        
        respond_to do |format|
            if @like.save
                format.html { redirect_to redirect , notice: 'Like was successfully created.' }
            else
                format.html { render :new }
            end
        end
    end
    
    def destroy
        if params[:redirect].present?
            redirect = params[:redirect]
        else
            redirect = root_path
        end
        like = Like.find_by_id(params[:id])
        like.destroy
        respond_to do |format|
          format.html { redirect_to redirect, notice: 'Item was successfully destroyed.' }
        end
    end
    
    private
    def like_params
        params[:like][:user_id] = current_user.id
        params.require(:like).permit(:likeable_id, :likeable_type, :user_id)
    end
end
