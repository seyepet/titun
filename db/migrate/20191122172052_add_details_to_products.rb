class AddDetailsToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :vendor, :string
    add_column :products, :years_of_experience, :integer
    add_column :products, :skills, :string
    add_column :products, :number_of_jobs, :integer
    add_column :products, :speciality, :string
    add_column :products, :profile, :text
    add_column :products, :location, :string
    add_column :products, :state, :string
    add_column :products, :country, :string
  end
end
