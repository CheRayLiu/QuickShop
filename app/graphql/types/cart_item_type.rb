# frozen_string_literal: true

Types::CartItemType = GraphQL::ObjectType.define do
  name 'Cart_Item'
  description "Cart item is a collection of information about the cart item such as quantity, shopping cart id and product id"
  field :quantity, !types.Int, description: "Quantity of the cart item"
  field :shopping_carts_id, !types.Int, "Shopping cart id of the cart item"
  field :product_id, !types.Int, "Product id of the cart item"
end
