# frozen_string_literal: true

Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :create_shopping_cart, function: Mutations::CreateShoppingCart.new
  field :purchase_by_id, function: Mutations::PurchaseById.new
  field :add_to_cart, function: Mutations::AddToCart.new
  field :check_out_cart, function: Mutations::CheckOutCart.new
  field :clear_cart, function: Mutations::ClearCart.new
  field :delete_cart_item, function: Mutations::DeleteCartItem.new
end
