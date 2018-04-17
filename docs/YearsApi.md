# WsApiClient::YearsApi

All URIs are relative to *https://api.wheel-size.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**years_list**](YearsApi.md#years_list) | **GET** /years/ | Returns list of years for the given manufacturer/model


# **years_list**
> Array&lt;Year&gt; years_list(make, opts)

Returns list of years for the given manufacturer/model

Get a list of years that match the given manufacturer and model (if present)

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

api_instance = WsApiClient::YearsApi.new

make = '\"mitsubishi\"' # String | Manufacturer slug name, use _**`GET /makes/`**_ to get possible values (e.g. `mitsubishi`)

opts = { 
  model: 'model_example' # String | Model slug name, use _**`GET /models/`**_ to get possible values (e.g. `outlander`)
}

begin
  #Returns list of years for the given manufacturer/model
  result = api_instance.years_list(make, opts)
  p result
rescue WsApiClient::ApiError => e
  puts "Exception when calling YearsApi->years_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **make** | **String**| Manufacturer slug name, use _**&#x60;GET /makes/&#x60;**_ to get possible values (e.g. &#x60;mitsubishi&#x60;) | 
 **model** | **String**| Model slug name, use _**&#x60;GET /models/&#x60;**_ to get possible values (e.g. &#x60;outlander&#x60;) | [optional] 

### Return type

[**Array&lt;Year&gt;**](Year.md)

### Authorization

[user_key](../README.md#user_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



