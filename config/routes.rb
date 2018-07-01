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
  end
end
