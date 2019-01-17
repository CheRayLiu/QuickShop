# frozen_string_literal: true

Types::ShoppingCartType = GraphQL::ObjectType.define do
  name 'Shopping_cart'
  description "Shopping cart is collection of information about the shopping cart"
  field :completed, !types.Boolean, description: "Purchase completion status of shopping cart"
  field :total_cost, !types.Float, description: "Total cost of shopping cart (includes product and shipping costs)"
  field :user_id, !types.Int, description: "User id of shopping cart"

  field :cart_items, description: "Cart items of shopping cart" do
    type -> { !types[!Types::CartItemType] }
    preload :cart_items
    resolve ->(obj, _args, _ctx) { obj.cart_items }
  end
end
