class AddLastNameToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :Last_Name, :string
  end
end
