class CreateProductVariants < ActiveRecord::Migration[5.2]
  def change
    create_table :product_variants do |t|
      t.string :title
      t.decimal :price
      t.string :image

      t.timestamps
    end
  end
end
