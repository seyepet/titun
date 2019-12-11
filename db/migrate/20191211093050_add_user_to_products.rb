class AddUserToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :user, :string
  end
end
