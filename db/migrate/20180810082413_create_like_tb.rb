class CreateLikeTb < ActiveRecord::Migration
  def change
    create_table :like_tbs do |t|
      t.integer :object_id
      t.integer :user_id
    end
  end
end
