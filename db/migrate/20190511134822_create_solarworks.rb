class CreateSolarworks < ActiveRecord::Migration[5.2]
  def change
    create_table :solarworks do |t|
      t.string :name
      t.string :code
      t.string :description
      t.decimal :price
      t.string :image_url
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
