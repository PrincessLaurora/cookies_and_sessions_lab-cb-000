class ProductsController < ApplicationController

  def index
  end

  def add
    cart << params[:product]
    render :index

    session[:cart]
  end

  def add
    @product = Product.find(params[:id])
    cart << @product.id
    session[:cart] = cart
  end  

end
