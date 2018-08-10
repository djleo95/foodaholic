class AddUrlToImages < ActiveRecord::Migration
  def change
    add_column :images, :image_url, :string
  end
end
