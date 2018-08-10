class CreateAlbumTb < ActiveRecord::Migration
  def change
    create_table :album_tbs do |t|
      t.integer :user_id
      t.string :title
      t.string :content
    end
  end
end
