class CommentsController < ApplicationController
    def create
        @comment = Comment.new(comment_params)
        if params[:comment][:redirect].present?
            redirect = params[:comment][:redirect]
        else
            redirect = root_path
        end
        respond_to do |format|
            if @comment.save
                format.html { redirect_to redirect , notice: 'Comment was successfully created.' }
            else
                format.html { render :new }
            end
        end
    end
    
    private
    def comment_params
        params[:comment][:user_id] = current_user.id
        params.require(:comment).permit(:commentable_id, :commentable_type, :content, :user_id)
    end
end