# frozen_string_literal: true

Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "The schema’s entry-point for queries. This acts as the public, top-level API from which all queries must start."
  field :all_products, !types[Types::ProductType] do
    argument :all_avail, !types.Boolean, description: "True to only return products with available inventory, False if not"
    description "Return all products with the option of only returning products with available inventory"
    resolve -> (_obj, args, _ctx) {
      if args[:all_avail] == true
        Product.where("inventory_count > ?", 0)
      else
        Product.all
      end
    }
  end

  field :product_by_id, !types[Types::ProductType] do
    argument :product_id, !types.ID, description: "Specified product_id"
    description "Return product with the specified product id"

    resolve -> (_obj, args, _ctx) {
      Product.where("id= ?", args[:product_id])
    }
  end

  field :shopping_cart_by_id, !types[Types::ShoppingCartType] do
    argument :user_id, !types.ID, description: "Specified user_id"
    description "Return shopping cart based on specified user_id"
    resolve -> (_obj, args, _ctx) {
      ShoppingCart.where("user_id = ?", args[:user_id])
    }
  end
end
