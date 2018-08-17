class Share < ActiveRecord::Base
    belongs_to :shareable, polymorphic: true
    belongs_to :user
    
    def get_shared_object
        if(self.shareable_type == 'Image')
            Image.find_by_id(self.shareable_id)
        end
    end
end