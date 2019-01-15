Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :create_shopping_cart, function: Resolvers::CreateShoppingCart.new
  field :purchase_by_id, function: Resolvers::PurchaseById.new
  field :add_to_cart, function: Resolvers::AddToCart.new
  field :check_out_cart, function: Resolvers::CheckOutCart.new
  field :clear_cart, function: Resolvers::ClearCart.new
  field :delete_cart_item, function: Resolvers::DeleteCartItem.new
end
