class CreateLocalPurchasingOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :local_purchasing_orders do |t|
      t.decimal :amount, precision: 15, scale: 2, default: 0
      t.string :name
      t.string :contragent
      t.string :currency
      t.date :date

      t.timestamps
    end
  end
end
