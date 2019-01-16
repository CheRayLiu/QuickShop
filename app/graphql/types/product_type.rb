# frozen_string_literal: true

Types::ProductType = GraphQL::ObjectType.define do
  name 'Product'

  field :title, !types.String
  field :description, !types.String
  field :price, !types.Float
  field :shipping, !types.Float
  field :inventory_count, !types.Int
  field :sold_count, !types.Int
end
