=begin
#Wheel Fitment API

#The Wheel Fitment API allows for programmatic access to the database of www.wheel-size.com and its services. Use this API to retrieve information about vehicle fitment database for rims and tires, including OE and option fitments, and plus/minus sizing fitment information. A variety of country and language specific options are available. The coverage of fitment data for vehicles manufactured since 2000 is nearly 100%.  The information about fitment data is updated on a daily basis.

OpenAPI spec version: v1
Contact: info@wheel-size.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

# Common files
require 'ws-api-client-ruby/api_client'
require 'ws-api-client-ruby/api_error'
require 'ws-api-client-ruby/version'
require 'ws-api-client-ruby/configuration'

# Models
require 'ws-api-client-ruby/models/aggregation'
require 'ws-api-client-ruby/models/body'
require 'ws-api-client-ruby/models/bolt_pattern'
require 'ws-api-client-ruby/models/country'
require 'ws-api-client-ruby/models/generation'
require 'ws-api-client-ruby/models/generation_with_make_and_model'
require 'ws-api-client-ruby/models/make'
require 'ws-api-client-ruby/models/make_with_models'
require 'ws-api-client-ruby/models/market'
require 'ws-api-client-ruby/models/model'
require 'ws-api-client-ruby/models/model_with_tires'
require 'ws-api-client-ruby/models/model_with_trims'
require 'ws-api-client-ruby/models/power'
require 'ws-api-client-ruby/models/pressure'
require 'ws-api-client-ruby/models/rim_agregation'
require 'ws-api-client-ruby/models/size_aggregation'
require 'ws-api-client-ruby/models/tire'
require 'ws-api-client-ruby/models/tires_aggregation'
require 'ws-api-client-ruby/models/trim'
require 'ws-api-client-ruby/models/trim_with_market_and_years'
require 'ws-api-client-ruby/models/vehicle'
require 'ws-api-client-ruby/models/wheel'
require 'ws-api-client-ruby/models/wheel_pair'
require 'ws-api-client-ruby/models/year'

# APIs
require 'ws-api-client-ruby/api/bolt_patterns_api'
require 'ws-api-client-ruby/api/countries_api'
require 'ws-api-client-ruby/api/generations_api'
require 'ws-api-client-ruby/api/makes_api'
require 'ws-api-client-ruby/api/markets_api'
require 'ws-api-client-ruby/api/models_api'
require 'ws-api-client-ruby/api/search_api'
require 'ws-api-client-ruby/api/tires_api'
require 'ws-api-client-ruby/api/trims_api'
require 'ws-api-client-ruby/api/vehicles_api'
require 'ws-api-client-ruby/api/years_api'

module WsApiClient
  class << self
    # Customize default settings for the SDK using block.
    #   WsApiClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
