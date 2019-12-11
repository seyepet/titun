class AddDetailsToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :email, :string
    add_column :orders, :deliveryaddress, :string
    add_column :orders, :phone_number, :string
  end
end
