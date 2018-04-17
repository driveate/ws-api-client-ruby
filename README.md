# ws-api-client-ruby

WsApiClient - the Ruby gem for the Wheel Fitment API

The Wheel Fitment API allows for programmatic access to the database of www.wheel-size.com and its services. Use this API to retrieve information about vehicle fitment database for rims and tires, including OE and option fitments, and plus/minus sizing fitment information. A variety of country and language specific options are available. The coverage of fitment data for vehicles manufactured since 2000 is nearly 100%.  The information about fitment data is updated on a daily basis.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: v1
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build ws-api-client-ruby.gemspec
```

Then either install the gem locally:

```shell
gem install ./ws-api-client-ruby-1.0.0.gem
```
(for development, run `gem install --dev ./ws-api-client-ruby-1.0.0.gem` to install the development dependencies).

Finally add this to the Gemfile:

    gem 'ws-api-client-ruby', '~> 1.0.0'

### Install from Git

Add the following in the Gemfile:

    gem 'ws-api-client-ruby', :git => 'https://github.com/driveate/ws-api-client-ruby.git'

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'ws-api-client-ruby'

# Setup authorization
WsApiClient.configure do |config|
  # Configure API key authorization: user_key
  config.api_key['user_key'] = 'YOUR API KEY'
end

api_instance = WsApiClient::MakesApi.new

opts = {
  countries: 'us,gb,jp' # String | Show information for local manufacturers from specified countries only. Use `GET /countries/` method to get the full list of countries. (e.g. `us,gb,jp`)
}

begin
  #Get list manufacturers
  result = api_instance.makes_list(opts)
  p result
rescue WsApiClient::ApiError => e
  puts "Exception when calling MakesApi->makes_list: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.wheel-size.com/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*WsApiClient::BoltPatternsApi* | [**bolt_patterns_list**](docs/BoltPatternsApi.md#bolt_patterns_list) | **GET** /bolt-patterns/ | Get list of bolt patterns
*WsApiClient::BoltPatternsApi* | [**bolt_patterns_read**](docs/BoltPatternsApi.md#bolt_patterns_read) | **GET** /bolt-patterns/{bolt_pattern}/ | Model modifications by bolt pattern
*WsApiClient::CountriesApi* | [**countries_list**](docs/CountriesApi.md#countries_list) | **GET** /countries/ | Returns a list of countries
*WsApiClient::GenerationsApi* | [**generations_list**](docs/GenerationsApi.md#generations_list) | **GET** /generations/ | Generations for the given model
*WsApiClient::MakesApi* | [**makes_list**](docs/MakesApi.md#makes_list) | **GET** /makes/ | Returns a list of manufacturers
*WsApiClient::MarketsApi* | [**markets_list**](docs/MarketsApi.md#markets_list) | **GET** /markets/ | Returns a list of markets/regions
*WsApiClient::ModelsApi* | [**models_list**](docs/ModelsApi.md#models_list) | **GET** /models/ | Returns a list of models by manufacturer
*WsApiClient::ModelsApi* | [**models_read**](docs/ModelsApi.md#models_read) | **GET** /models/{make}/{slug}/ | Get more info about model
*WsApiClient::ModelsApi* | [**models_read_year**](docs/ModelsApi.md#models_read_year) | **GET** /models/{make}/{slug}/{year}/ | Get more info about model/year
*WsApiClient::SearchApi* | [**search_by_hf_tire_list**](docs/SearchApi.md#search_by_hf_tire_list) | **GET** /search/by_hf_tire/ | Find models matching given high flotation tire
*WsApiClient::SearchApi* | [**search_by_model_list**](docs/SearchApi.md#search_by_model_list) | **GET** /search/by_model/ | Find OE and option fitments by model/year/trim
*WsApiClient::SearchApi* | [**search_by_rim_list**](docs/SearchApi.md#search_by_rim_list) | **GET** /search/by_rim/ | Find models matching given rim parameters
*WsApiClient::SearchApi* | [**search_by_tire_list**](docs/SearchApi.md#search_by_tire_list) | **GET** /search/by_tire/ | Find models matching given tire parameters
*WsApiClient::TiresApi* | [**tires_list**](docs/TiresApi.md#tires_list) | **GET** /tires/ | Returns a list of tires
*WsApiClient::TiresApi* | [**tires_read**](docs/TiresApi.md#tires_read) | **GET** /tires/{tire}/ | Model modifications matching given tire
*WsApiClient::TrimsApi* | [**trims_list**](docs/TrimsApi.md#trims_list) | **GET** /trims/ | Model modifications
*WsApiClient::VehiclesApi* | [**vehicles_list**](docs/VehiclesApi.md#vehicles_list) | **GET** /vehicles/ | Find OE and option fitments by model/year/trim
*WsApiClient::YearsApi* | [**years_list**](docs/YearsApi.md#years_list) | **GET** /years/ | Returns list of years for the given manufacturer/model


## Documentation for Models

 - [WsApiClient::Aggregation](docs/Aggregation.md)
 - [WsApiClient::Body](docs/Body.md)
 - [WsApiClient::BoltPattern](docs/BoltPattern.md)
 - [WsApiClient::Country](docs/Country.md)
 - [WsApiClient::Generation](docs/Generation.md)
 - [WsApiClient::Make](docs/Make.md)
 - [WsApiClient::MakeWithModels](docs/MakeWithModels.md)
 - [WsApiClient::Market](docs/Market.md)
 - [WsApiClient::Model](docs/Model.md)
 - [WsApiClient::ModelWithTires](docs/ModelWithTires.md)
 - [WsApiClient::ModelWithTrims](docs/ModelWithTrims.md)
 - [WsApiClient::Power](docs/Power.md)
 - [WsApiClient::Pressure](docs/Pressure.md)
 - [WsApiClient::RimAgregation](docs/RimAgregation.md)
 - [WsApiClient::SizeAggregation](docs/SizeAggregation.md)
 - [WsApiClient::Tire](docs/Tire.md)
 - [WsApiClient::TiresAggregation](docs/TiresAggregation.md)
 - [WsApiClient::Trim](docs/Trim.md)
 - [WsApiClient::TrimWithMarketAndYears](docs/TrimWithMarketAndYears.md)
 - [WsApiClient::Vehicle](docs/Vehicle.md)
 - [WsApiClient::Wheel](docs/Wheel.md)
 - [WsApiClient::WheelPair](docs/WheelPair.md)
 - [WsApiClient::Year](docs/Year.md)


## Documentation for Authorization


### user_key

- **Type**: API key
- **API key parameter name**: user_key
- **Location**: URL query string

