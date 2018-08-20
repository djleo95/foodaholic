class CreateTagObject < ActiveRecord::Migration
  def change
    create_table :tag_objects do |t|
      t.integer :tag_id
      t.integer :album_id

      t.timestamps
    end
  end
end
