class CreateRofimachines < ActiveRecord::Migration[5.2]
  def change
    create_table :rofimachines do |t|
      t.string :name
      t.string :code
      t.string :description
      t.decimal :price
      t.string :image_url
    

      t.timestamps
    end
  end
end
