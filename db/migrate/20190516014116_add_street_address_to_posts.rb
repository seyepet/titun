class AddStreetAddressToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :Street_Address, :string
  end
end
