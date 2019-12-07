class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.text :description
      t.decimal :price
      t.string :image
      t.string :vendor, null: false
      t.integer :years_of_experience
      t.string :skills
      t.integer :number_of_jobs
      t.string :speciality
      t.text :profile
      t.string :location
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
