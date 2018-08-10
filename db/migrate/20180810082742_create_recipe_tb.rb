class CreateRecipeTb < ActiveRecord::Migration
  def change
    create_table :recipe_tbs do |t|
      t.integer :picture_id
      t.integer :tag_id
      t.string :ingredients
      t.string :content
    end
  end
end
