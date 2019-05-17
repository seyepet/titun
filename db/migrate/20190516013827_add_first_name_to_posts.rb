class AddFirstNameToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :First_Name, :string
  end
end
