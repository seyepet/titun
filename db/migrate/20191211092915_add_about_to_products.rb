class AddAboutToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :about, :string
  end
end
