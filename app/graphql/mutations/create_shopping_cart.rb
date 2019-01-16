# frozen_string_literal: true

class Mutations::CreateShoppingCart < GraphQL::Function
  # arguments passed as "args"
  argument :user_id, !types.ID

  # return type from the mutation
  type Types::ShoppingCartType

  # the mutation method
  # _obj - is parent object, which in this case is nil
  # args - are the arguments passed
  # _ctx - is the GraphQL context (which would be discussed later)
  def call(_obj, args, _ctx)
    cart = ShoppingCart.find_by(user_id: [:user_id])
    if cart.nil?
      cart = ShoppingCart.create!(
        completed: false,
        total_cost: 0.00,
        user_id: args[:user_id]
      )
    end
    cart
  end
end
