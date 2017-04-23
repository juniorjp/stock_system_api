module V2
  class ProductSerializer < ActiveModel::Serializer
    attributes :id, :name, :code, :price, :quantity

  end
end
