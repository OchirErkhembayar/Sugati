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

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(set_product)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def destroy

  end

  private

  def set_product
    params.require(:product).permit(:name, :description, :price, :wait_time)
  end
end
