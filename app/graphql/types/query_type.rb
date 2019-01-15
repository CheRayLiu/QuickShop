Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :all_products, !types[Types::ProductType] do
    argument :all_avail, !types.Boolean
    resolve -> (obj, args, ctx) { 
      if args[:all_avail] == true
        Product.where("inventory_count > ?",0)
      else
        Product.all
      end
    }
  end

  field :product_by_id, !types[Types::ProductType] do
    argument :product_id, !types.ID

    resolve -> (obj, args, ctx) {
      Product.where("id= ?", args[:product_id])
    }
  end

  field :shopping_cart_by_id, !types[Types::ShoppingCartType] do
    argument :user_id, !types.ID
    resolve -> (obj, args, ctx) {
      ShoppingCart.where("user_id = ?",args[:user_id])
    }
  end
end
