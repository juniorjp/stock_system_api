class Product < ApplicationRecord
  validates :name, presence: true
  validates :code, presence: true
  validates :price, presence: true, numericality: true
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }

  has_many :categories, through: :categories_products, class_name: 'CategoryProduct'
end
