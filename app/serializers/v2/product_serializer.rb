module V2
  class ProductSerializer < ActiveModel::Serializer
    attributes :name, :code, :price, :quantity

    def code
      object.code.blank? ? object.id : object.code
    end
  end
end
