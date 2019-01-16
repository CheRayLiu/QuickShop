# frozen_string_literal: true

class Mutations::PurchaseById< GraphQL::Function
    # arguments passed as "args"
    argument :product_id, !types.ID

    # return type from the mutation
    type Types::ProductType

    # the mutation method
    # _obj - is parent object, which in this case is nil
    # args - are the arguments passed
    # _ctx - is the GraphQL context (which would be discussed later)
    def call(_obj, args, _ctx)
      product = Product.find_by(id: args[:product_id])
      if product.inventory_count == 0
        raise GraphQL::ExecutionError, "Product with the ID: #{args[:product_id]} is out of inventory and unavailable."
      else
        product.inventory_count -= 1
        product.save
      end
      Product.find_by(id: args[:product_id])
    end
end