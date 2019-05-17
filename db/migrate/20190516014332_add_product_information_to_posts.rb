class AddProductInformationToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :Product_Information, :string
  end
end
