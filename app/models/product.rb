class Product < ApplicationRecord

  has_many :categories_products
  has_many :categories, through: :categories_products, class_name: 'CategoryProduct'

  update_index('products#product') { self }

  validates :name, presence: true
  validates :code, presence: true
  validates :price, presence: true, numericality: true
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }

end
