# frozen_string_literal: true

Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"
  description "The schema’s entry-point for mutations. This acts as the public, top-level API from which all mutation queries must start."
  
  field :create_shopping_cart,description: "Creates a shopping cart with specified user id ",  function: Mutations::CreateShoppingCart.new
  field :purchase_by_id, description: "Purchases a product with specified product id and quantity ",function: Mutations::PurchaseById.new
  field :add_to_cart, description:"Add product with specified product id and quantity into shopping cart with speicified user id ",function: Mutations::AddToCart.new
  field :check_out_cart, description:"Checks out the shopping cart with the specified user id ",function: Mutations::CheckOutCart.new
  field :clear_cart, description:"Clears out the shopping cart with the specified user id ",function: Mutations::ClearCart.new
  field :delete_cart_item, description:"Clears out a cart item with the specified product id from the shopping cart with the specified user id ", function: Mutations::DeleteCartItem.new
end
