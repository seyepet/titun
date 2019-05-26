class CreateMastercares < ActiveRecord::Migration[5.2]
  def change
    create_table :mastercares do |t|
      t.string :name
      t.string :courses
      t.float :price
      t.string :description
      t.string :image_url
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
