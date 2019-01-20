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
  # _ctx - is the GraphQL context 
  def call(_obj, args, _ctx)
    product = Product.find_by(id: args[:product_id])
    cart = ShoppingCart.find_by(user_id: args[:user_id])
    if product.nil? 
      raise GraphQL::ExecutionError, "Product with the product id #{args[:product_id]} does not exist."
    end
    existing = cart.cart_items.find_by(product_id: product.id)
    if existing.nil?
      item = cart.cart_items.create(:product_id => product.id, :quantity => args[:quantity])
      cart.completed = false
      puts cart.cart_items
    else
      existing.quantity += args[:quantity]
      cart.completed = false
      cart.save
      existing.save
    end
    cart.total_cost += product.price * args[:quantity] + product.shipping
    cart.save
    cart
  end
end
