# frozen_string_literal: true

class Mutations::ClearCart < GraphQL::Function
  # arguments passed as "args"
  argument :user_id, !types.ID, description: "User id of shopping cart"

  # return type from the mutation
  type Types::ShoppingCartType

  # the mutation method
  # _obj - is parent object, which in this case is nil
  # args - are the arguments passed
  # _ctx - is the GraphQL context
  def call(_obj, args, _ctx)
    cart = ShoppingCart.find_by(user_id: args[:user_id])
    cart.cart_items.clear
    cart.total_cost = 0
    cart.save
    ShoppingCart.find_by(user_id: args[:user_id])
  end
end
