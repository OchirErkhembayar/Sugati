class ProductsController < ApplicationController
  def index
    @products = Product.all
    session[:visit_count] ||= 0
    session[:visit_count] += 1
    @visit_count = session[:visit_count]
  end

  def show
    @product = Product.find(params[:id])
  end

  private

  def find_product

  end
end
