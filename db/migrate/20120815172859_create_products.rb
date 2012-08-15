class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :brand
      t.string :category
      t.float :price
      t.text :description

      t.timestamps
    end
  end
end
