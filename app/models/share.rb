class Share < ActiveRecord::Base
    belongs_to :shareable, polymorphic: true
    belongs_to :user
    
    after_save :add_interact
    before_destroy :delete_interact
    
    def add_interact
        if self.shareable_type == 'Image'
            @shared_object = Image.find_by_id(self.shareable_id)
        elsif self.shareable_type == 'Album'
            @shared_object = Album.find_by_id(self.shareable_id)
        elsif self.shareable_type == 'Recipe'
            @shared_object = Recipe.find_by_id(self.shareable_id)
        end
        
        @shared_object.share_count += 1
        @shared_object.all_interact_count += 4
        @shared_object.save
    end
    
    def delete_interact
        if self.shareable_type == 'Image'
            @shared_object = Image.find_by_id(self.shareable_id)
        elsif self.shareable_type == 'Album'
            @shared_object = Album.find_by_id(self.shareable_id)
        elsif self.shareable_type == 'Recipe'
            @shared_object = Recipe.find_by_id(self.shareable_id)
        end
        
        @shared_object.share_count -= 1
        @shared_object.all_interact_count -= 4
        @shared_object.save
    end
end