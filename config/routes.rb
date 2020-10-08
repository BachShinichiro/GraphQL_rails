Rails.application.routes.draw do
  resources :blogs
  root 'blogs#index'

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/your/endpoint"
  end
  post "/graphql", to: "graphql#execute"

end
