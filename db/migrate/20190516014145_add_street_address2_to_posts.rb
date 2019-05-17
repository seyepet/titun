class AddStreetAddress2ToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :Street_Address2, :string
  end
end
