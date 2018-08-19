class SharesController < ApplicationController
    def create
        @share = Share.new(share_params)
        if params[:share][:redirect].present?
            redirect = params[:share][:redirect]
        else
            redirect = root_path
        end
        respond_to do |format|
            if @share.save
                format.html { redirect_to redirect , notice: 'Share was successfully created.' }
            else
                format.html { render :new }
            end
        end
    end
    
    def destroy
        share = Share.find_by_id(params[:id])
        share.destroy
        respond_to do |format|
          format.html { redirect_to root_path, notice: 'Item was successfully destroyed.' }
        end
    end
    
    private
    def share_params
        params[:share][:user_id] = current_user.id
        params.require(:share).permit(:shareable_id, :shareable_type, :user_id)
    end
end