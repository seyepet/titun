class CreateAdeapartments < ActiveRecord::Migration[5.2]
  def change
    create_table :adeapartments do |t|
      t.string :name
      t.string :address
      t.decimal :price
      t.string :description
      t.string :image_url
     

      t.timestamps
    end
  end
end
