# WsApiClient::CountriesApi

All URIs are relative to *https://api.wheel-size.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**countries_list**](CountriesApi.md#countries_list) | **GET** /countries/ | Returns a list of countries


# **countries_list**
> Array&lt;Country&gt; countries_list

Returns a list of countries

List of possible countries to be used in any other API method. Indended to be used in case you want to restrict results for several countries.

### Example
```ruby
# load the gem
require 'ws_api_client'
# setup authorization
WsApiClient.configure do |config|
  # Configure API key authorization: user_key
  config.api_key['user_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['user_key'] = 'Bearer'
end

api_instance = WsApiClient::CountriesApi.new

begin
  #Returns a list of countries
  result = api_instance.countries_list
  p result
rescue WsApiClient::ApiError => e
  puts "Exception when calling CountriesApi->countries_list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Country&gt;**](Country.md)

### Authorization

[user_key](../README.md#user_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



