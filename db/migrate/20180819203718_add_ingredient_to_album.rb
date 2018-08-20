class AddIngredientToAlbum < ActiveRecord::Migration
  def change
    add_column :albums, :ingredient, :string
    add_column :albums, :post_type, :integer
  end
end
