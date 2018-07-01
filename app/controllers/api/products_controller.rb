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

  def update
    # get a product from the db
    product_id = params[:id]
    # grab a particular recipe from the db
    @product1 = Product.find_by(id: product_id)
    # modify that product
    @product1.name = params[:input_name] || @product1.name
    @product1.price = params[:input_price] || @product1.price
    @product1.image_url = params[:input_image_url] || @product1.image_url
    @product1.description = params[:input_description] || @product1.description
    @product1.save
    render "show.json.jbuilder"
  end

  def destroy
    # get a particular product 
    product_id = params[:id]
    @product1 = Product.find_by(id: product_id)
    #remove that product from the db
    @product1.destroy 
    render json: {message: "Delete has occurred"} 
  end
end
