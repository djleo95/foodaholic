class Album < ActiveRecord::Base
    has_many :images
    has_many :comments, as: :commentable
    has_many :likes, as: :likeable
   
    accepts_nested_attributes_for :images
    # , allow_destroy: true, reject_if: proc { |attributes| attributes['images'].blank? }
end
