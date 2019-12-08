class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.string :image
      t.string :vendor
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
