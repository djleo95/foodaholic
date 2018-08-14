class Image < ActiveRecord::Base
    mount_uploader :image_url, PhotoUploader
    belongs_to :album
end
