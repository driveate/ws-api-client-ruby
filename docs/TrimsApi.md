# WsApiClient::TrimsApi

All URIs are relative to *https://api.wheel-size.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**trims_list**](TrimsApi.md#trims_list) | **GET** /trims/ | Model modifications


# **trims_list**
> Array&lt;Trim&gt; trims_list(make, model, year)

Model modifications

List of model modifications matching given manufacturer, model and year

### Example
```ruby
# load the gem
require 'ws-api-client-ruby'
# setup authorization
WsApiClient.configure do |config|
  # Configure API key authorization: user_key
  config.api_key['user_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['user_key'] = 'Bearer'
end

api_instance = WsApiClient::TrimsApi.new

make = '\"mitsubishi\"' # String | Manufacturer slug name, use _**`GET /makes/`**_ to get possible values (e.g. `mitsubishi`)

model = '\"outlander\"' # String | Model slug name, use _**`GET /models/`**_ to get possible values (e.g. `outlander`)

year = 2015 # Integer | You can use _**`GET /years/`**_ to get possible years (e.g. `2015`)


begin
  #Model modifications
  result = api_instance.trims_list(make, model, year)
  p result
rescue WsApiClient::ApiError => e
  puts "Exception when calling TrimsApi->trims_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **make** | **String**| Manufacturer slug name, use _**&#x60;GET /makes/&#x60;**_ to get possible values (e.g. &#x60;mitsubishi&#x60;) | 
 **model** | **String**| Model slug name, use _**&#x60;GET /models/&#x60;**_ to get possible values (e.g. &#x60;outlander&#x60;) | 
 **year** | **Integer**| You can use _**&#x60;GET /years/&#x60;**_ to get possible years (e.g. &#x60;2015&#x60;) | 

### Return type

[**Array&lt;Trim&gt;**](Trim.md)

### Authorization

[user_key](../README.md#user_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



