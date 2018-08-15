class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.integer :user_id
      t.integer :shareable_id      
      t.string :shareable_type
    end
  end
end
