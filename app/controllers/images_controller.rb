class ImagesController < ApplicationController
  def destroy
    @image = Image.find(params[:id])
    album = @image.album
    @image.destroy
    respond_to do |format|
      format.html {redirect_to album_url(album), notice: 'Image was successfully destroyed.'}
    end
  end
end