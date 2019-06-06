class CreateItelphones < ActiveRecord::Migration[5.2]
  def change
    create_table :itelphones do |t|
      t.string :name
      t.string :model
      t.string :colour
      t.decimal :price
      t.string :description
      t.string :image_url
      t.string :number
      t.string :vendor
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
