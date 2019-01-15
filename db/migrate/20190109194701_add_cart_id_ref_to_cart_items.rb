class AddCartIdRefToCartItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :cart_items, :shopping_cart, foreign_key: true
  end
end
