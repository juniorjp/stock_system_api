require 'spec_helper'
require 'rails_helper'
require 'rspec_api_documentation'
require 'rspec_api_documentation/dsl'

RspecApiDocumentation.configure do |config|
  config.format = [:html]
  config.curl_host = 'http://localhost:3000'
  config.api_name = 'Stock System API'
  config.curl_headers_to_filter = ['Host', 'Cookie', 'Origin']
end