class CreateThemastercares < ActiveRecord::Migration[5.2]
  def change
    create_table :themastercares do |t|
      t.string :name
      t.string :courses
      t.float :price
      t.string :description
      t.string :image_url
    

      t.timestamps
    end
  end
end
