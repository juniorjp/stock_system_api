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
    example_request 'Creates a new product' do
      explanation 'First, it creates a product, then it returns a response with the product registered data'
      parsed_response = JSON.parse(response_body)
      expect(parsed_response.size).to eq(1)
      product = parsed_response[0]
      expect(product).to include({
         'name' => name,
         'code' => code,
         'quantity' => quantity,
         'price' => price,

      })
      expect(status).to eq(200)
    end
  end

  put '/v2/products/:id' do
    parameter :id, 'Product Id', required: true
    parameter :name, 'Product Name', required: true, scope: :product
    parameter :quantity, 'Quantity', required: true, scope: :product
    parameter :price, 'Price', required: true, scope: :product
    product = FactoryGirl.create(:product)
    name = 'Ventilador Fujitsu'
    code = 'A1-2099'
    quantity = 23
    price = 59.1
    let(:id) { product.id }
    let(:raw_post) {  {product: {code: code, name: name, quantity: quantity, price: price, }}.to_json }
    example_request 'Updates an existing product' do
      explanation 'First, updates chosen product fields, then returns a response with the product updated data'
      parsed_response = JSON.parse(response_body)
      expect(parsed_response.size).to eq(1)
      product = parsed_response[0]
      expect(product).to include({
                                     'name' => name,
                                     'code' => code,
                                     'quantity' => quantity,
                                     'price' => price,

                                 })
      expect(status).to eq(200)
    end
  end

  post '/v2/products/search' do
    FactoryGirl.create(:product)
    let(:raw_post) { {page: 1, per_page: 1}.to_json }
    example_request 'List products' do
      parsed_response = JSON.parse(response_body)
      expect(parsed_response.length).to eq(1)
      expect(status).to eq(200)
    end
  end

  post '/v2/products/search' do
    FactoryGirl.create(:product, name: 'Gold Chess')
    let(:raw_post) { {search_term: 'che'}.to_json }
    example_request 'Search product by a specific term' do
      parsed_response = JSON.parse(response_body)
      expect(parsed_response.length).to eq(1)
      puts parsed_response
      product = parsed_response[0]
      expect(product).not_to be_empty
      expect(product['name']).to eq('Gold Chess')
      expect(status).to eq(200)
    end
  end

  get '/v2/products/:id' do
    product = FactoryGirl.create(:product)
    parameter :id, 'Product Id', required: true
    let(:id) { product.id }
    example_request 'Gets a product from the api using the product id.' do
      parsed_response = JSON.parse(response_body)
      expect(parsed_response).not_to be_empty
      expect(parsed_response.size).to eq(1)
      product = parsed_response[0]
      expect(product).not_to be_empty
      expect(product['name']).not_to be_empty
      expect(status).to eq(200)
    end
  end

  delete '/v2/products/:id' do
    product = FactoryGirl.create(:product)
    parameter :id, 'Product Id', required: true
    let(:id) { product.id }
    example_request 'Removes a product from the api using the product id.' do
      parsed_response = JSON.parse(response_body)
      expect(parsed_response).not_to be_empty
      expect(parsed_response.size).to eq(1)
      product = parsed_response[0]
      expect(product).not_to be_empty
      expect(product['name']).not_to be_empty
      expect(status).to eq(200)
    end
  end

end