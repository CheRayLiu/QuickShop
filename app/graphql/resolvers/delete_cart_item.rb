class Resolvers::DeleteCartItem < GraphQL::Function
    # arguments passed as "args"
    argument :user_id, !types.ID
    argument :product_id, !types.ID
  
  
    # return type from the mutation
    type Types::ShoppingCartType
  
    # the mutation method
    # _obj - is parent object, which in this case is nil
    # args - are the arguments passed
    # _ctx - is the GraphQL context (which would be discussed later)
    def call(_obj, args, _ctx)
      
      cart = ShoppingCart.find_by(user_id: args[:user_id])
      product = Product.find_by(product_id: args[:product_id]) 
      item = CartItem.find_by(product_id: args[product_id])
      cart.cart_items.delete(item)
      cart.total_cost -= (product.price)*item.quantity+product.shipping
      cart.save
      cart
    end
end
  
  