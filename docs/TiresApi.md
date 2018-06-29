# WsApiClient::TiresApi

All URIs are relative to *https://api.wheel-size.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tires_list**](TiresApi.md#tires_list) | **GET** /tires/ | Returns a list of tires
[**tires_read**](TiresApi.md#tires_read) | **GET** /tires/{tire}/ | Model modifications matching given tire


# **tires_list**
> Array&lt;Tire&gt; tires_list(opts)

Returns a list of tires

Get a list of tires with a number of matching model modifications

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

api_instance = WsApiClient::TiresApi.new

opts = { 
  width: 8.14, # Float | Tire width, mm (e.g. `195`)
  width_min: 8.14, # Float | Lower bound for tire width, mm (e.g. `165`)
  width_max: 8.14, # Float | Upper bound for tire width, mm (e.g. `200`)
  aspect_ratio: 8.14, # Float | Aspect ratio, % (e.g. `50`)
  aspect_ratio_min: 8.14, # Float | Lower bound for aspect ratio, % (e.g. `30`)
  aspect_ratio_max: 8.14, # Float | Upper bound for aspect ratio, % (e.g. `70`)
  rim_diameter: 8.14, # Float | Rim diameter, in (e.g. `16`)
  rim_diameter_min: 8.14, # Float | Lower bound for rim diameter, in (e.g. `13`)
  rim_diameter_max: 8.14, # Float | Upper bound for rim diameter, in (e.g. `20`)
  brands: 'brands_example', # String | Show information only for specified manufacturers. Use _**`GET /makes/`**_ method to get the full list. (e.g. `mitsubishi,nissan,toyota`)
  brands_exclude: 'brands_exclude_example', # String | Don't show information for specified manufacturers. Use _**`GET /makes/`**_ method to get the full list. (e.g. `geely,great-wall`)
  countries: 'countries_example', # String | Show information for local manufacturers from specified countries only. Use _**`GET /countries/`**_ method to get the full list of countries. (e.g. `us,gb,jp`)
  countries_exclude: 'countries_exclude_example' # String | Don't show information for local manufacturers from specified countries. Use _**`GET /countries/`**_ method to get the full list of countries. (e.g. `ru,ua`)
}

begin
  #Returns a list of tires
  result = api_instance.tires_list(opts)
  p result
rescue WsApiClient::ApiError => e
  puts "Exception when calling TiresApi->tires_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **width** | **Float**| Tire width, mm (e.g. &#x60;195&#x60;) | [optional] 
 **width_min** | **Float**| Lower bound for tire width, mm (e.g. &#x60;165&#x60;) | [optional] 
 **width_max** | **Float**| Upper bound for tire width, mm (e.g. &#x60;200&#x60;) | [optional] 
 **aspect_ratio** | **Float**| Aspect ratio, % (e.g. &#x60;50&#x60;) | [optional] 
 **aspect_ratio_min** | **Float**| Lower bound for aspect ratio, % (e.g. &#x60;30&#x60;) | [optional] 
 **aspect_ratio_max** | **Float**| Upper bound for aspect ratio, % (e.g. &#x60;70&#x60;) | [optional] 
 **rim_diameter** | **Float**| Rim diameter, in (e.g. &#x60;16&#x60;) | [optional] 
 **rim_diameter_min** | **Float**| Lower bound for rim diameter, in (e.g. &#x60;13&#x60;) | [optional] 
 **rim_diameter_max** | **Float**| Upper bound for rim diameter, in (e.g. &#x60;20&#x60;) | [optional] 
 **brands** | **String**| Show information only for specified manufacturers. Use _**&#x60;GET /makes/&#x60;**_ method to get the full list. (e.g. &#x60;mitsubishi,nissan,toyota&#x60;) | [optional] 
 **brands_exclude** | **String**| Don&#39;t show information for specified manufacturers. Use _**&#x60;GET /makes/&#x60;**_ method to get the full list. (e.g. &#x60;geely,great-wall&#x60;) | [optional] 
 **countries** | **String**| Show information for local manufacturers from specified countries only. Use _**&#x60;GET /countries/&#x60;**_ method to get the full list of countries. (e.g. &#x60;us,gb,jp&#x60;) | [optional] 
 **countries_exclude** | **String**| Don&#39;t show information for local manufacturers from specified countries. Use _**&#x60;GET /countries/&#x60;**_ method to get the full list of countries. (e.g. &#x60;ru,ua&#x60;) | [optional] 

### Return type

[**Array&lt;Tire&gt;**](Tire.md)

### Authorization

[user_key](../README.md#user_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **tires_read**
> Array&lt;MakeWithModels&gt; tires_read(tire, opts)

Model modifications matching given tire

Get a list of model modifications by tire

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

api_instance = WsApiClient::TiresApi.new

tire = '\"195/50R15\"' # String | Formatted tire size. Use _**`GET /tires/`**_ to get possible values (e.g. `195/50R15`)

opts = { 
  width: 8.14, # Float | Tire width, mm (e.g. `195`)
  width_min: 8.14, # Float | Lower bound for tire width, mm (e.g. `165`)
  width_max: 8.14, # Float | Upper bound for tire width, mm (e.g. `200`)
  aspect_ratio: 8.14, # Float | Aspect ratio, % (e.g. `50`)
  aspect_ratio_min: 8.14, # Float | Lower bound for aspect ratio, % (e.g. `30`)
  aspect_ratio_max: 8.14, # Float | Upper bound for aspect ratio, % (e.g. `70`)
  rim_diameter: 8.14, # Float | Rim diameter, in (e.g. `16`)
  rim_diameter_min: 8.14, # Float | Lower bound for rim diameter, in (e.g. `13`)
  rim_diameter_max: 8.14, # Float | Upper bound for rim diameter, in (e.g. `20`)
  lang: 'lang_example', # String | Use this parameter anywhere in the API to get *`name`* field translation of the following objects: **`Make`**, **`Model`**, **`Market`**. Across the *`name`* this objects will have *`name_en`* field with original english name. By default `en` language is used.  Available languages: `en,de,ru,es,pt,fr,ja,zh-cn,zh-tw`. Currently translation works for chinese `zh-cn` language only
  brands: 'brands_example', # String | Show information only for specified manufacturers. Use _**`GET /makes/`**_ method to get the full list. (e.g. `mitsubishi,nissan,toyota`)
  brands_exclude: 'brands_exclude_example', # String | Don't show information for specified manufacturers. Use _**`GET /makes/`**_ method to get the full list. (e.g. `geely,great-wall`)
  countries: 'countries_example', # String | Show information for local manufacturers from specified countries only. Use _**`GET /countries/`**_ method to get the full list of countries. (e.g. `us,gb,jp`)
  countries_exclude: 'countries_exclude_example' # String | Don't show information for local manufacturers from specified countries. Use _**`GET /countries/`**_ method to get the full list of countries. (e.g. `ru,ua`)
}

begin
  #Model modifications matching given tire
  result = api_instance.tires_read(tire, opts)
  p result
rescue WsApiClient::ApiError => e
  puts "Exception when calling TiresApi->tires_read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tire** | **String**| Formatted tire size. Use _**&#x60;GET /tires/&#x60;**_ to get possible values (e.g. &#x60;195/50R15&#x60;) | 
 **width** | **Float**| Tire width, mm (e.g. &#x60;195&#x60;) | [optional] 
 **width_min** | **Float**| Lower bound for tire width, mm (e.g. &#x60;165&#x60;) | [optional] 
 **width_max** | **Float**| Upper bound for tire width, mm (e.g. &#x60;200&#x60;) | [optional] 
 **aspect_ratio** | **Float**| Aspect ratio, % (e.g. &#x60;50&#x60;) | [optional] 
 **aspect_ratio_min** | **Float**| Lower bound for aspect ratio, % (e.g. &#x60;30&#x60;) | [optional] 
 **aspect_ratio_max** | **Float**| Upper bound for aspect ratio, % (e.g. &#x60;70&#x60;) | [optional] 
 **rim_diameter** | **Float**| Rim diameter, in (e.g. &#x60;16&#x60;) | [optional] 
 **rim_diameter_min** | **Float**| Lower bound for rim diameter, in (e.g. &#x60;13&#x60;) | [optional] 
 **rim_diameter_max** | **Float**| Upper bound for rim diameter, in (e.g. &#x60;20&#x60;) | [optional] 
 **lang** | **String**| Use this parameter anywhere in the API to get *&#x60;name&#x60;* field translation of the following objects: **&#x60;Make&#x60;**, **&#x60;Model&#x60;**, **&#x60;Market&#x60;**. Across the *&#x60;name&#x60;* this objects will have *&#x60;name_en&#x60;* field with original english name. By default &#x60;en&#x60; language is used.  Available languages: &#x60;en,de,ru,es,pt,fr,ja,zh-cn,zh-tw&#x60;. Currently translation works for chinese &#x60;zh-cn&#x60; language only | [optional] 
 **brands** | **String**| Show information only for specified manufacturers. Use _**&#x60;GET /makes/&#x60;**_ method to get the full list. (e.g. &#x60;mitsubishi,nissan,toyota&#x60;) | [optional] 
 **brands_exclude** | **String**| Don&#39;t show information for specified manufacturers. Use _**&#x60;GET /makes/&#x60;**_ method to get the full list. (e.g. &#x60;geely,great-wall&#x60;) | [optional] 
 **countries** | **String**| Show information for local manufacturers from specified countries only. Use _**&#x60;GET /countries/&#x60;**_ method to get the full list of countries. (e.g. &#x60;us,gb,jp&#x60;) | [optional] 
 **countries_exclude** | **String**| Don&#39;t show information for local manufacturers from specified countries. Use _**&#x60;GET /countries/&#x60;**_ method to get the full list of countries. (e.g. &#x60;ru,ua&#x60;) | [optional] 

### Return type

[**Array&lt;MakeWithModels&gt;**](MakeWithModels.md)

### Authorization

[user_key](../README.md#user_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



