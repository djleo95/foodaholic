class Recipe < ActiveRecord::Base
    belongs_to :user
    
    accepts_nested_attributes_for :albums
    accepts_nested_attributes_for :images
end