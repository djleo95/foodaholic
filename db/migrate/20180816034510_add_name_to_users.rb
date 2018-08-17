class AddNameToUsers < ActiveRecord::Migration
  def change
      add_column :users, :name, :string
      add_column :users, :birthday, :datetime
      add_column :users, :from, :string
      add_column :users, :life_story, :string
      add_column :users, :phone, :string
  end
end
