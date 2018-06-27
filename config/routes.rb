Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get "/all_products" => "products#all_products_action"
    get "/first_product" => "products#first_product"
    get "/second_product" => "products#second_product"
  end
end
