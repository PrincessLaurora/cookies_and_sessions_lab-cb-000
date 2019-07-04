class ProductsController < ApplicationController

  def index
  end

  def add
    cart << params[:product]
    render :index

    session[:cart]
  end

  def add
    cart << @product.id
    session[:cart] = cart
  end  

end
