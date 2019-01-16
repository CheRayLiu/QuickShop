# frozen_string_literal: true

Types::CartItemType = GraphQL::ObjectType.define do
  name 'Cart_Item'
  field :quantity, !types.Int
  field :shopping_carts_id, !types.Int
  field :product_id, !types.Int
end
