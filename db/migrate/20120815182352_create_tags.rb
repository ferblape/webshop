class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.references :product

      t.timestamps
    end
    add_index :tags, :product_id
  end
end
