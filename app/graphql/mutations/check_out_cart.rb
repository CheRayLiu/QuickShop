# frozen_string_literal: true

class Mutations::CheckOutCart < GraphQL::Function
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
    if cart.nil?
      raise GraphQL::ExecutionError, "Shopping cart with the user_id  #{args[:user_id]} does not exist."
    end
    cart.cart_items.each do |cart_item|
      cur_product = Product.find_by(id: cart_item.product_id)
      if cur_product.inventory_count - cart_item.quantity < 0
        raise GraphQL::ExecutionError, "Quantity requested: #{cart_item.quantity}.
        Current inventory count for product: #{cur_product.inventory_count}."
      else
        cur_product.inventory_count -= cart_item.quantity
        cur_product.sold_count += cart_item.quantity
        cur_product.save
        cart_item.delete
      end
    end
    cart.completed = true
    cart.total_cost = 0
    cart.save
    cart = ShoppingCart.find_by(user_id: args[:user_id])
    cart
  end
end
