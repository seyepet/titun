class CreateTonycycles < ActiveRecord::Migration[5.2]
  def change
    create_table :tonycycles do |t|
      t.string :brand
      t.string :model
      t.date :year
      t.string :gear_type
      t.integer :number_of_wheels
      t.decimal :price
      t.boolean :purchased
      t.string :image_url
    

      t.timestamps
    end
  end
end
