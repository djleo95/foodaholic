class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.integer :user_id
      t.string :title
      t.string :content
      
      t.timestamps
    end
  end
end
