class V2::ProductsController < ApplicationController

  def index
  end

  def create
    product = Product.new()
    product.assign_attributes product_params
    if product.save
      render json: product, serializer: V2::ProductSerializer, root: nil
    else
      render json: { error: 'Could not create product, try again later', details: product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def product_params
    params.require(:product).permit(:code, :name, :price, :quantity)
  end
end
