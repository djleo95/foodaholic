class CreateCommentTb < ActiveRecord::Migration
  def change
    create_table :comment_tbs do |t|
      t.integer :object_id
      t.integer :user_id
      t.string :content
      t.integer :type
    end
  end
end
