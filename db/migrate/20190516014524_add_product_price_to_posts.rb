class AddProductPriceToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :Product_Price, :string
  end
end
