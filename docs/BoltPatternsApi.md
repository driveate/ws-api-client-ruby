# WsApiClient::BoltPatternsApi

All URIs are relative to *https://api.wheel-size.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bolt_patterns_list**](BoltPatternsApi.md#bolt_patterns_list) | **GET** /bolt-patterns/ | Get list of bolt patterns
[**bolt_patterns_read**](BoltPatternsApi.md#bolt_patterns_read) | **GET** /bolt-patterns/{bolt_pattern}/ | Model modifications by bolt pattern


# **bolt_patterns_list**
> Array&lt;BoltPattern&gt; bolt_patterns_list(opts)

Get list of bolt patterns

A list of possible bolt patterns with the number of matching model modifications

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

api_instance = WsApiClient::BoltPatternsApi.new

opts = { 
  stud: 8.14, # Float | Number of stud holes (e.g. `5`)
  stud_min: 8.14, # Float | Lower bound for number of stud holes (e.g. `4`)
  stud_max: 8.14, # Float | Upper bound for number of stud holes (e.g. `7`)
  pcd: 8.14, # Float | Pitch circle diameter, mm (e.g. `115`)
  pcd_min: 8.14, # Float | Lower bound for pitch circle diameter, mm (e.g. `105`)
  pcd_max: 8.14, # Float | Upper bound for pitch circle diameter, mm (e.g. `135`)
  brands: 'brands_example', # String | Show information only for specified manufacturers. Use _**`GET /makes/`**_ method to get the full list. (e.g. `mitsubishi,nissan,toyota`)
  brands_exclude: 'brands_exclude_example', # String | Don't show information for specified manufacturers. Use _**`GET /makes/`**_ method to get the full list. (e.g. `geely,great-wall`)
  countries: 'countries_example', # String | Show information for local manufacturers from specified countries only. Use _**`GET /countries/`**_ method to get the full list of countries. (e.g. `us,gb,jp`)
  countries_exclude: 'countries_exclude_example' # String | Don't show information for local manufacturers from specified countries. Use _**`GET /countries/`**_ method to get the full list of countries. (e.g. `ru,ua`)
}

begin
  #Get list of bolt patterns
  result = api_instance.bolt_patterns_list(opts)
  p result
rescue WsApiClient::ApiError => e
  puts "Exception when calling BoltPatternsApi->bolt_patterns_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stud** | **Float**| Number of stud holes (e.g. &#x60;5&#x60;) | [optional] 
 **stud_min** | **Float**| Lower bound for number of stud holes (e.g. &#x60;4&#x60;) | [optional] 
 **stud_max** | **Float**| Upper bound for number of stud holes (e.g. &#x60;7&#x60;) | [optional] 
 **pcd** | **Float**| Pitch circle diameter, mm (e.g. &#x60;115&#x60;) | [optional] 
 **pcd_min** | **Float**| Lower bound for pitch circle diameter, mm (e.g. &#x60;105&#x60;) | [optional] 
 **pcd_max** | **Float**| Upper bound for pitch circle diameter, mm (e.g. &#x60;135&#x60;) | [optional] 
 **brands** | **String**| Show information only for specified manufacturers. Use _**&#x60;GET /makes/&#x60;**_ method to get the full list. (e.g. &#x60;mitsubishi,nissan,toyota&#x60;) | [optional] 
 **brands_exclude** | **String**| Don&#39;t show information for specified manufacturers. Use _**&#x60;GET /makes/&#x60;**_ method to get the full list. (e.g. &#x60;geely,great-wall&#x60;) | [optional] 
 **countries** | **String**| Show information for local manufacturers from specified countries only. Use _**&#x60;GET /countries/&#x60;**_ method to get the full list of countries. (e.g. &#x60;us,gb,jp&#x60;) | [optional] 
 **countries_exclude** | **String**| Don&#39;t show information for local manufacturers from specified countries. Use _**&#x60;GET /countries/&#x60;**_ method to get the full list of countries. (e.g. &#x60;ru,ua&#x60;) | [optional] 

### Return type

[**Array&lt;BoltPattern&gt;**](BoltPattern.md)

### Authorization

[user_key](../README.md#user_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **bolt_patterns_read**
> Array&lt;MakeWithModels&gt; bolt_patterns_read(bolt_pattern, opts)

Model modifications by bolt pattern

Get a list of model modifications matching to the given bolt pattern

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

api_instance = WsApiClient::BoltPatternsApi.new

bolt_pattern = '\"5x105\"' # String | Bolt pattern combines number of stud holes and pitch circle diameter. Use _**`GET /bolt-patterns/`**_ to get possible values (e.g. `5x105`)

opts = { 
  rim_diameter: 8.14, # Float | Rim diameter, in (e.g. `16`)
  rim_width: 8.14, # Float | Rim width, in (e.g. `7`)
  offset: 8.14, # Float | Rim offset, mm (e.g. `40`)
  offset_min: 8.14, # Float | Lower bound for rim offset, mm (e.g. `35`)
  offset_max: 8.14, # Float | Upper bound for rim offset, mm (e.g. `45`)
  cb: 8.14, # Float | Centre bore value, mm (e.g. `60`)
  cb_min: 8.14, # Float | Lower bound for centre bore value, mm (e.g. `55`)
  cb_max: 8.14, # Float | Upper bound for centre bore value, mm (e.g. `65`)
  lang: 'lang_example', # String | Use this parameter anywhere in the API to get *`name`* field translation of the following objects: **`Make`**, **`Model`**, **`Market`**. Across the *`name`* this objects will have *`name_en`* field with original english name. By default `en` language is used.  Available languages: `en,de,ru,es,pt,fr,ja,zh-cn,zh-tw`. Currently translation works for chinese `zh-cn` language only
  brands: 'brands_example', # String | Show information only for specified manufacturers. Use _**`GET /makes/`**_ method to get the full list. (e.g. `mitsubishi,nissan,toyota`)
  brands_exclude: 'brands_exclude_example', # String | Don't show information for specified manufacturers. Use _**`GET /makes/`**_ method to get the full list. (e.g. `geely,great-wall`)
  countries: 'countries_example', # String | Show information for local manufacturers from specified countries only. Use _**`GET /countries/`**_ method to get the full list of countries. (e.g. `us,gb,jp`)
  countries_exclude: 'countries_exclude_example' # String | Don't show information for local manufacturers from specified countries. Use _**`GET /countries/`**_ method to get the full list of countries. (e.g. `ru,ua`)
}

begin
  #Model modifications by bolt pattern
  result = api_instance.bolt_patterns_read(bolt_pattern, opts)
  p result
rescue WsApiClient::ApiError => e
  puts "Exception when calling BoltPatternsApi->bolt_patterns_read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bolt_pattern** | **String**| Bolt pattern combines number of stud holes and pitch circle diameter. Use _**&#x60;GET /bolt-patterns/&#x60;**_ to get possible values (e.g. &#x60;5x105&#x60;) | 
 **rim_diameter** | **Float**| Rim diameter, in (e.g. &#x60;16&#x60;) | [optional] 
 **rim_width** | **Float**| Rim width, in (e.g. &#x60;7&#x60;) | [optional] 
 **offset** | **Float**| Rim offset, mm (e.g. &#x60;40&#x60;) | [optional] 
 **offset_min** | **Float**| Lower bound for rim offset, mm (e.g. &#x60;35&#x60;) | [optional] 
 **offset_max** | **Float**| Upper bound for rim offset, mm (e.g. &#x60;45&#x60;) | [optional] 
 **cb** | **Float**| Centre bore value, mm (e.g. &#x60;60&#x60;) | [optional] 
 **cb_min** | **Float**| Lower bound for centre bore value, mm (e.g. &#x60;55&#x60;) | [optional] 
 **cb_max** | **Float**| Upper bound for centre bore value, mm (e.g. &#x60;65&#x60;) | [optional] 
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



