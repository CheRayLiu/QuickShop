# frozen_string_literal: true

class QuickShopSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
end
