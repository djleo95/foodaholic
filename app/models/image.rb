class Image < ActiveRecord::Base
    mount_uploader :image_url, PhotoUploader
    belongs_to :album
    has_many :comments, as: :commentable
    has_many :likes, as: :likeable
    has_many :shares, as: :shareable
end
