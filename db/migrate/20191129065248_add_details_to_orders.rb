class AddDetailsToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :email, :string
    add_column :orders, :message, :text
    add_column :orders, :phone_number, :integer
  end
end
