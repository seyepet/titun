class CreateMarketplaces < ActiveRecord::Migration[5.2]
  def change
    create_table :marketplaces do |t|
      t.string :name
      t.decimal :price
      t.string :description
      t.string :vendor
      t.string :image_url
      t.string :number
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
