class AddInteractCountToUser < ActiveRecord::Migration
  def change
    add_column :images, :like_count, :integer, default: 0
    add_column :images, :comment_count, :integer, default: 0
    add_column :images, :share_count, :integer, default: 0
    add_column :images, :all_interact_count, :integer, default: 0
    
    add_column :albums, :like_count, :integer, default: 0
    add_column :albums, :comment_count, :integer, default: 0
    add_column :albums, :share_count, :integer, default: 0
    add_column :albums, :all_interact_count, :integer, default: 0
    
    add_column :recipes, :like_count, :integer, default: 0
    add_column :recipes, :comment_count, :integer, default: 0
    add_column :recipes, :share_count, :integer, default: 0
    add_column :recipes, :all_interact_count, :integer, default: 0
  end
end
