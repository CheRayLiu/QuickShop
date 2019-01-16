# frozen_string_literal: true

ShopiyBackendRailsSchema = GraphQL::Schema.define do
  use GraphQL::Batch

  enable_preloading

  mutation(Types::MutationType)
  query(Types::QueryType)
end

GraphQL::Errors.configure(ShopiyBackendRailsSchema) do
  rescue_from ActiveRecord::RecordNotFound do |_exception|
    nil
  end

  rescue_from ActiveRecord::RecordInvalid do |exception|
    GraphQL::ExecutionError.new(exception.record.errors.full_messages.join("\n"))
  end
end
