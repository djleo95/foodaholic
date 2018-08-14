class Album < ActiveRecord::Base
    has_many :images
    accepts_nested_attributes_for :images, allow_destroy: true, reject_if: proc { |attributes| attributes['images'].blank? }
end
