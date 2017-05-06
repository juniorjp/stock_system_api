require 'acceptance_helper'


resource 'Product' do
  header 'Accept', 'application/json'
  header 'Content-Type', 'application/json'
  post '/v2/products' do
    parameter :name, 'Product Name', required: true, scope: :product
    parameter :quantity, 'Quantity', required: true, scope: :product
    parameter :price, 'Price', required: true, scope: :product
    name = 'Ventilador Arno'
    code = 'A1-2017'
    quantity = 25
    price = 70.1
    let(:raw_post) {  {product: {code: code, name: name, quantity: quantity, price: price, }}.to_json }
    example_request 'Create a new product' do
      explanation 'First, create a product, then returns a response with the product registered data'
      product = JSON.parse(response_body)
      puts product
      expect(product).to include({
         'name' => name,
         'code' => code,
         'quantity' => quantity,
         'price' => price,

      })
      expect(status).to eq(200)
    end
    DatabaseCleaner.clean
  end

  post '/v2/products/search' do
    FactoryGirl.create(:product)
    let(:raw_post) { {page: 1, per_page: 1}.to_json }
    example_request 'List products' do
      parsed_response = JSON.parse(response_body)
      expect(parsed_response['products'].length).to eq(1)
      expect(status).to eq(200)
    end
  end

end