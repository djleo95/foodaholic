class Like < ActiveRecord::Base
    belongs_to :likeable, polymorphic: true
    belongs_to :user
    
    after_save :add_interact
    before_destroy :delete_interact
    
    def add_interact
        byebug
        if self.likeable_type == 'Image'
            @liked_object = Image.find_by_id(self.likeable_id)
        elsif self.likeable_type == 'Album'
            @liked_object = Album.find_by_id(self.likeable_id)
        elsif self.likeable_type == 'Recipe'
            @liked_object = Recipe.find_by_id(self.likeable_id)
        end
        
        @liked_object.like_count += 1
        @liked_object.all_interact_count += 1
        @liked_object.save
    end
    
    def delete_interact
        if self.likeable_type == 'Image'
            @liked_object = Image.find_by_id(self.likeable_id)
        elsif self.likeable_type == 'Album'
            @liked_object = Album.find_by_id(self.likeable_id)
        elsif self.likeable_type == 'Recipe'
            @liked_object = Recipe.find_by_id(self.likeable_id)
        end
        
        @liked_object.like_count -= 1
        @liked_object.all_interact_count -= 1
        @liked_object.save
    end
end
