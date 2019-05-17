class AddPhoneNumberToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :Phone_Number, :string
  end
end
