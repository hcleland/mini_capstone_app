class Api::ProductsController < ApplicationController

  def index
    # search_term = params[:search_name]
    # @products = Product.where("LOWER(name) LIKE ?", "%#{search_term}%").order(params[:sort_by])
    if params[:category]
      # get me only the items from that category
      # find all the products for a particular category
      category = Category.find_by(name: params[:category])
      p 'category'
      p category
      @products = category.products
    else
      @products = Product.all
    end
    render 'index.json.jbuilder'
  end

  def show
    # grab information from params to determine which recipe to show to the user
    product_id = params[:id]
    # grab a particular recipe from the db
    @product = Product.find(product_id)
    # show that recipe to the user
    render "show.json.jbuilder"
  end

  def create
    @product = Product.new(
                           name: params[:name],
                           price: params[:price],
                           description: params[:description],
                           supplier_id: params[:supplier_id]
                          )

    @product.save
    render 'show.json.jbuilder'
  end

  def update
    # get a product from the db
    product_id = params[:id]
    # grab a particular recipe from the db
    @product = Product.find(product_id)
    # modify that product
    @product.name = params[:input_name] || @product.name
    @product.price = params[:input_price] || @product.price
    # @product1.image_url = params[:input_image_url] || @product1.image_url
    @product.description = params[:input_description] || @product.description
    @product.save
    render "show.json.jbuilder"
  end

  def destroy
    # get a particular product 
    product_id = params[:id]
    @product1 = Product.find(product_id)
    #remove that product from the db
    @product.destroy 
    render json: {message: "Delete has occurred"} 
  end
end
