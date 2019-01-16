# frozen_string_literal: true

Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :all_products, !types[Types::ProductType] do
    argument :all_avail, !types.Boolean
    resolve -> (_obj, args, _ctx) {
      if args[:all_avail] == true
        Product.where("inventory_count > ?", 0)
      else
        Product.all
      end
    }
  end

  field :product_by_id, !types[Types::ProductType] do
    argument :product_id, !types.ID

    resolve -> (_obj, args, _ctx) {
      Product.where("id= ?", args[:product_id])
    }
  end

  field :shopping_cart_by_id, !types[Types::ShoppingCartType] do
    argument :user_id, !types.ID
    resolve -> (_obj, args, _ctx) {
      ShoppingCart.where("user_id = ?", args[:user_id])
    }
  end
end
