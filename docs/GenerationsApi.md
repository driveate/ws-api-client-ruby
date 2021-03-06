# WsApiClient::GenerationsApi

All URIs are relative to *https://api.wheel-size.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generations_list**](GenerationsApi.md#generations_list) | **GET** /generations/ | Generations for the given model


# **generations_list**
> Array&lt;GenerationWithMakeAndModel&gt; generations_list(make, model, opts)

Generations for the given model

Get a list of generations for the given model. It is possible to retrieve generations for specific year.

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

api_instance = WsApiClient::GenerationsApi.new

make = '\"mitsubishi\"' # String | Manufacturer slug name, use _**`GET /makes/`**_ to get possible values (e.g. `mitsubishi`)

model = '\"outlander\"' # String | Model slug name, use _**`GET /models/`**_ to get possible values (e.g. `outlander`)

opts = { 
  year: 56, # Integer | You can use _**`GET /years/`**_ to get possible years (e.g. `2015`)
  lang: 'lang_example' # String | Use this parameter anywhere in the API to get *`name`* field translation of the following objects: **`Make`**, **`Model`**, **`Market`**. Across the *`name`* this objects will have *`name_en`* field with original english name. By default `en` language is used.  Available languages: `en,de,ru,es,pt,fr,ja,zh-cn,zh-tw`. Currently translation works for chinese `zh-cn` language only
}

begin
  #Generations for the given model
  result = api_instance.generations_list(make, model, opts)
  p result
rescue WsApiClient::ApiError => e
  puts "Exception when calling GenerationsApi->generations_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **make** | **String**| Manufacturer slug name, use _**&#x60;GET /makes/&#x60;**_ to get possible values (e.g. &#x60;mitsubishi&#x60;) | 
 **model** | **String**| Model slug name, use _**&#x60;GET /models/&#x60;**_ to get possible values (e.g. &#x60;outlander&#x60;) | 
 **year** | **Integer**| You can use _**&#x60;GET /years/&#x60;**_ to get possible years (e.g. &#x60;2015&#x60;) | [optional] 
 **lang** | **String**| Use this parameter anywhere in the API to get *&#x60;name&#x60;* field translation of the following objects: **&#x60;Make&#x60;**, **&#x60;Model&#x60;**, **&#x60;Market&#x60;**. Across the *&#x60;name&#x60;* this objects will have *&#x60;name_en&#x60;* field with original english name. By default &#x60;en&#x60; language is used.  Available languages: &#x60;en,de,ru,es,pt,fr,ja,zh-cn,zh-tw&#x60;. Currently translation works for chinese &#x60;zh-cn&#x60; language only | [optional] 

### Return type

[**Array&lt;GenerationWithMakeAndModel&gt;**](GenerationWithMakeAndModel.md)

### Authorization

[user_key](../README.md#user_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



