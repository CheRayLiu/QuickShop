# frozen_string_literal: true

Types::ShoppingCartType = GraphQL::ObjectType.define do
  name 'shopping_cart'

  field :completed, !types.Boolean
  field :total_cost, !types.Float
  field :user_id, !types.Int

  field :cart_items do
    type -> { !types[!Types::CartItemType] }
    preload :cart_items
    resolve ->(obj, _args, _ctx) { obj.cart_items }
  end
end
