# WsApiClient::VehiclesApi

All URIs are relative to *https://api.wheel-size.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**vehicles_list**](VehiclesApi.md#vehicles_list) | **GET** /vehicles/ | Find OE and option fitments by model/year/trim


# **vehicles_list**
> Array&lt;Vehicle&gt; vehicles_list(make, model, year, opts)

Find OE and option fitments by model/year/trim

Find OE and option fitments that match the given manufacturer, model, year and trim.  Please use _**`GET /search/by_model/`**_ instead as it is deprecated at the current moment.

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

api_instance = WsApiClient::VehiclesApi.new

make = '\"mitsubishi\"' # String | Manufacturer slug name, use _**`GET /makes/`**_ to get possible values (e.g. `mitsubishi`)

model = '\"outlander\"' # String | Model slug name, use _**`GET /models/`**_ to get possible values (e.g. `outlander`)

year = 2015 # Integer | You can use _**`GET /years/`**_ to get possible years (e.g. `2015`)

opts = { 
  trim: 'trim_example', # String | Use *`slug`* from _**`GET /trims/`**_ methods here. (e.g. `20-dla-gg2w-iii-restyling`)
  only_oem: true, # BOOLEAN | Show only original equipment wheels
  lang: 'lang_example' # String | Use this parameter anywhere in the API to get *`name`* field translation of the following objects: **`Make`**, **`Model`**, **`Market`**. Across the *`name`* this objects will have *`name_en`* field with original english name. By default `en` language is used.  Available languages: `en,de,ru,es,pt,fr,ja,zh-cn,zh-tw`. Currently translation works for chinese `zh-cn` language only
}

begin
  #Find OE and option fitments by model/year/trim
  result = api_instance.vehicles_list(make, model, year, opts)
  p result
rescue WsApiClient::ApiError => e
  puts "Exception when calling VehiclesApi->vehicles_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **make** | **String**| Manufacturer slug name, use _**&#x60;GET /makes/&#x60;**_ to get possible values (e.g. &#x60;mitsubishi&#x60;) | 
 **model** | **String**| Model slug name, use _**&#x60;GET /models/&#x60;**_ to get possible values (e.g. &#x60;outlander&#x60;) | 
 **year** | **Integer**| You can use _**&#x60;GET /years/&#x60;**_ to get possible years (e.g. &#x60;2015&#x60;) | 
 **trim** | **String**| Use *&#x60;slug&#x60;* from _**&#x60;GET /trims/&#x60;**_ methods here. (e.g. &#x60;20-dla-gg2w-iii-restyling&#x60;) | [optional] 
 **only_oem** | **BOOLEAN**| Show only original equipment wheels | [optional] 
 **lang** | **String**| Use this parameter anywhere in the API to get *&#x60;name&#x60;* field translation of the following objects: **&#x60;Make&#x60;**, **&#x60;Model&#x60;**, **&#x60;Market&#x60;**. Across the *&#x60;name&#x60;* this objects will have *&#x60;name_en&#x60;* field with original english name. By default &#x60;en&#x60; language is used.  Available languages: &#x60;en,de,ru,es,pt,fr,ja,zh-cn,zh-tw&#x60;. Currently translation works for chinese &#x60;zh-cn&#x60; language only | [optional] 

### Return type

[**Array&lt;Vehicle&gt;**](Vehicle.md)

### Authorization

[user_key](../README.md#user_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



