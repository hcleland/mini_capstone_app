class Api::ProductsController < ApplicationController
  def all_products_action
    @products = Product.all
    render "all_products_view.json.jbuilder"
  end

  def first_product
    @product = Product.first 
    render "first_product_view.json.jbuilder"
  end

  def second_product
    @product = Product.second
    render "second_product_view.json.jbuilder"
  end

end
