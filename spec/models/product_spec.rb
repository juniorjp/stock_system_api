require 'rails_helper'

RSpec.describe Product, type: :model do

  #presence validation
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:price) }
  it { should validate_presence_of(:code) }

  #numericality validation
  it { should validate_numericality_of(:price) }
  it { should validate_numericality_of(:quantity) }

  #business validation
  it 'must have a positive price' do
    product  = FactoryGirl.build(:product, quantity: 0)
    expect(product).to_not be_valid
    product.quantity = 27
    expect(product).to be_valid
  end

  it 'may have many categories' do
    t = Product.reflect_on_association(:categories)
    t.macro.should == :has_many
  end

  it 'update elasticsearch index after save' do
    product  = FactoryGirl.build(:product)
    expect { product.save! }.to update_index('products#product')
  end
end
