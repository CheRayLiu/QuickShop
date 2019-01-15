class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.decimal :price
      t.decimal :shipping
      t.integer :inventory_count
      t.integer :sold_count

      t.timestamps
    end
  end
end
