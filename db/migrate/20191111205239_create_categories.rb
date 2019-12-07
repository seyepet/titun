class CreateCategories < ActiveRecord::Migration[5.2]
  def self.up
    create_table :categories do |t|
      t.string :title
      t.string :image

      t.timestamps
    end
  end
  def self.down
    create_table :categories do |t|
      t.string :title
      t.string :image

      t.timestamps
    end
  end
  # def change
  #   create_table :categories do |t|
  #     t.string :title
  #     t.string :image

  #     t.timestamps
  #   end
  # end
end
