class Comment < ActiveRecord::Base
    belongs_to :commentable, polymorphic: true
    belongs_to :user
    
    after_save :add_interact
    before_destroy :delete_interact
    
    def add_interact
        if self.commentable_type == 'Image'
            @commentd_object = Image.find_by_id(self.commentable_id)
        elsif self.commentable_type == 'Album'
            @commentd_object = Album.find_by_id(self.commentable_id)
        elsif self.commentable_type == 'Recipe'
            @commentd_object = Recipe.find_by_id(self.commentable_id)
        end
        
        @commentd_object.comment_count += 1
        @commentd_object.all_interact_count += 2
        @commentd_object.save
    end
    
    def delete_interact
        if self.commentable_type == 'Image'
            @commentd_object = Image.find_by_id(self.commentable_id)
        elsif self.commentable_type == 'Album'
            @commentd_object = Album.find_by_id(self.commentable_id)
        elsif self.commentable_type == 'Recipe'
            @commentd_object = Recipe.find_by_id(self.commentable_id)
        end
        
        @commentd_object.comment_count -= 1
        @commentd_object.all_interact_count -= 2
        @commentd_object.save
    end
end