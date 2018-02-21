class Api::ProductsController < Api::BaseController
  def index
    respond_with Product.all
  end

  def show
    respond_with Product.find(params["id"])
  end

  def new
    respond_with Product.new
  end

  def create
    respond_with :api, Product.create(product_params)
  end

  def destroy
    respond_with Product.destroy(params[:id])
  end

  def edit
    respond_with Dinosaur.find(params[:id])
  end

  def update
    product = Product.find(params["id"])
    product.update_attributes(product_params)
    respond_with product, json: product
  end

  private

  def product_params
    params.require(:product).permit(:id, :name, :description)
  end

end
