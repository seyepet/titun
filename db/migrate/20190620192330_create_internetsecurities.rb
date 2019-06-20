class CreateInternetsecurities < ActiveRecord::Migration[5.2]
  def change
    create_table :internetsecurities do |t|
      t.string :name
      t.string :type
      t.string :user
      t.string :capacity
      t.string :about
      t.string :noofdevice
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
