class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find_by(id: params[:id])
  end

  def new
  end

  def create
    @product = Product.create(
      name: params[:name],
      description: params[:description],
      image: params[:image],
      price: params[:price]
      )
    flash[:success] = "New product created!"
    redirect_to '/products'
  end

  def edit
    @product = Product.find_by(id: params[:id])
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(
      name: params[:name],
      description: params[:description],
      image: params[:image],
      price: params[:price]
      )

    flash[:success] = "Product was successfully updated!"
    redirect_to "/products/#{@product.id}"
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy

    flash[:success] = "Product deleted successfully"
    redirect_to '/products'
  end

end
