# frozen_string_literal: true

class Mutations::AddToCart < GraphQL::Function
  # arguments passed as "args"
  argument :user_id, !types.ID, description: "User id of the shopping cart"
  argument :product_id, !types.ID, description: "Product id of the product"
  argument :quantity, !types.Int, description: "Quantity of the product"

  # return type from the mutation
  type Types::ShoppingCartType

  # the mutation method
  # _obj - is parent object, which in this case is nil
  # args - are the arguments passed
  # _ctx - is the GraphQL context (which would be discussed later)
  def call(_obj, args, _ctx)
    product = Product.find_by(id: args[:product_id])
    cart = ShoppingCart.find_by(user_id: args[:user_id])
    cart.completed = false
    cart.save
    existing = cart.cart_items.find_by(product_id: product.id)
    if existing.nil?
      item = cart.cart_items.create!(product_id: product.id, quantity: args[:quantity])
    else
      existing.quantity += args[:quantity]
      existing.save
    end
    cart.total_cost += product.price * args[:quantity] + product.shipping
    cart.save
    cart
  end
  end
