class AddEmailToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :Email, :string
  end
end
