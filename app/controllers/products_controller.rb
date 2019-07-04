class ProductsController < ApplicationController

  def index
<<<<<<< HEAD
  end

  def add
    cart << params[:product]
    render :index
=======
    session[:cart]
  end

  def add
    @product = Product.find(params[:id])
    cart << @product.id
    session[:cart] = cart
>>>>>>> abef618b9fb12f124280c7b86ddb3600a34d3862
  end

end
