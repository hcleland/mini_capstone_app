class Api::ProductsController < ApplicationController

  def index
    @products = Product.all
    render "index.json.jbuilder"
  end

  def show
    # grab information from params to determine which recipe to show to the user
    product_id = params[:id]
    # grab a particular recipe from the db
    @product1 = Product.find_by(id: product_id)
    # show that recipe to the user
    render "show.json.jbuilder"

  end

  def second_product
    @product = Products.second
    render "second_product_view.json.jbuilder"
  end

  def create
    # make a new product in the db
    @product1 = Product.new(
        name: params[:input_name],
        price: params[:input_price],
        image_url: params[:input_image_url],
        description: params[:input_description] 
      )
      @product1.save
      render "show.json.jbuilder"
  end

end
