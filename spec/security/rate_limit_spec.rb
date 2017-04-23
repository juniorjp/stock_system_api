require 'rails_helper'
RSpec.describe Rack::Attack do
  include Rack::Test::Methods

  def app
    Rails.application
  end

  let(:limit) { 301 }
  it 'throttles requests above threshold' do
    Rails.cache.clear
    (limit).times do
      post '/v2/products/search'
    end
    expect(last_response.status).to eq 429
    Rails.cache.clear
  end

end
