# frozen_string_literal: true

Types::ProductType = GraphQL::ObjectType.define do
  name 'Product'
  description "Product represents a collection information of products"

  field :title, !types.String, description: "Title of product"
  field :description, !types.String, description: "Description of product"
  field :price, !types.Float, description: "Price of product"
  field :shipping, !types.Float, description: "Shipping cost of product"
  field :inventory_count, !types.Int, description: "Inventory count of product"
  field :sold_count, !types.Int, description: "Sold count of product"
end
