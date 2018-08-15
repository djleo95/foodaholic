class LikesController < ApplicationController
    def create
        @like = Like.new(like_params)
        
        respond_to do |format|
            if @like.save
                format.html { redirect_to root_path , notice: 'Like was successfully created.' }
            else
                format.html { render :new }
            end
        end
    end
    
    def destroy
        like = Like.find_by_id(params[:id])
        like.destroy
        respond_to do |format|
          format.html { redirect_to root_path, notice: 'Item was successfully destroyed.' }
        end
    end
    
    private
    def like_params
        params[:like][:user_id] = current_user.id
        params.require(:like).permit(:likeable_id, :likeable_type, :user_id)
    end
end