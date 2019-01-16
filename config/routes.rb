# frozen_string_literal: true

Rails.application.routes.draw do
  if Rails.env.development?
    mount(GraphiQL::Rails::Engine, at: "/graphql", graphql_path: "/graphql")
  end
  post "/graphql", to: "graphql#execute"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
