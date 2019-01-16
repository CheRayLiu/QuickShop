# frozen_string_literal: true

class CreateShoppingCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :shopping_carts do |t|
      t.bigint(:user_id)
      t.boolean(:completed)
      t.decimal(:total_cost)

      t.timestamps
    end
  end
end
