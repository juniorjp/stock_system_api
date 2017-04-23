class V2::ProductsController < ApplicationController

  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    page = params[:page] || 0
    per_page = params[:per_page] || 10
    query_service = ElasticsearchQueryService.new
    @products = query_service.paginate_query(ProductsIndex.all, page, per_page)
    @products = query_service.search_term(@products, params[:search_term])
    render json: @products.to_a, each_serializer: V2::ProductSerializer, root: false
  end

  def create
    product = Product.new()
    product.assign_attributes product_params
    if product.save
      render json: [product], each_serializer: V2::ProductSerializer, root: false
    else
      render json: { error: 'Could not create product, try again later', details: product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    render json: [@product], each_serializer: V2::ProductSerializer, root: false
  end

  def update
    @product.assign_attributes(product_params)
    if @product.save
      render json: [@product], each_serializer: V2::ProductSerializer, root: false
    else
      render json: { error: 'Could not update product, try again later', details: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    if @product.destroy
      render json: [@product], each_serializer: V2::ProductSerializer, root: false
    else
      render json: { error: 'Could not delete product, try again later', details: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def product_params
    params.require(:product).permit(:code, :name, :price, :quantity)
  end

  def set_product
    @product = Product.find(params[:id])
  end

end
