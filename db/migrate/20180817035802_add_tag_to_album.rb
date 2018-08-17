class AddTagToAlbum < ActiveRecord::Migration
  def change
    add_column :albums, :tag_id, :integer
  end
end
