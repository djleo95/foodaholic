class CreateTagTb < ActiveRecord::Migration
  def change
    create_table :tag_tbs do |t|
      t.string :title
    end
  end
end
