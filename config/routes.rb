Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    # index - shows all the products
    get "/products" => "products#index"
    # show - displays one product
    get "/products/:id" => "products#show"
    # create - make a new product in the db
    post "/products" => "products#create"
    # update - change a product currently in the db
    patch "/products/:id" => "products#update"
    # destroy - remove a product from the db
    delete "/products/:id" => "products#destroy"

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
    
    get "/orders/:id" => "orders#show"
    post "/orders" => "orders#create"

    get "/carted_products" => "carted_products#index"
    post "/carted_products" => "carted_products#create"
  end
end
