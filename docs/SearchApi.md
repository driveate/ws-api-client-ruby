# WsApiClient::SearchApi

All URIs are relative to *https://api.wheel-size.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**search_by_hf_tire_list**](SearchApi.md#search_by_hf_tire_list) | **GET** /search/by_hf_tire/ | Find models matching given high flotation tire
[**search_by_model_list**](SearchApi.md#search_by_model_list) | **GET** /search/by_model/ | Find OE and option fitments by model/year/trim
[**search_by_rim_list**](SearchApi.md#search_by_rim_list) | **GET** /search/by_rim/ | Find models matching given rim parameters
[**search_by_tire_list**](SearchApi.md#search_by_tire_list) | **GET** /search/by_tire/ | Find models matching given tire parameters


# **search_by_hf_tire_list**
> Array&lt;MakeWithModels&gt; search_by_hf_tire_list(tire_diameter, tire_section_width, rim_diameter_hf, opts)

Find models matching given high flotation tire

Get a list of model modifications that match the given tire size in high flotation sizing system

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

api_instance = WsApiClient::SearchApi.new

tire_diameter = 31 # Float | Tire diameter, in (e.g. `31`)

tire_section_width = 10.5 # Float | Tire section width, in (e.g. `10.5`)

rim_diameter_hf = 15 # Float | Rim diameter, in (e.g. `15`)

opts = { 
  lang: 'lang_example', # String | Use this parameter anywhere in the API to get *`name`* field translation of the following objects: **`Make`**, **`Model`**, **`Market`**. Across the *`name`* this objects will have *`name_en`* field with original english name. By default `en` language is used.  Available languages: `en,de,ru,es,pt,fr,ja,zh-cn,zh-tw`. Currently translation works for chinese `zh-cn` language only
  brands: 'brands_example', # String | Show information only for specified manufacturers. Use _**`GET /makes/`**_ method to get the full list. (e.g. `mitsubishi,nissan,toyota`)
  brands_exclude: 'brands_exclude_example', # String | Don't show information for specified manufacturers. Use _**`GET /makes/`**_ method to get the full list. (e.g. `geely,great-wall`)
  countries: 'countries_example', # String | Show information for local manufacturers from specified countries only. Use _**`GET /countries/`**_ method to get the full list of countries. (e.g. `us,gb,jp`)
  countries_exclude: 'countries_exclude_example' # String | Don't show information for local manufacturers from specified countries. Use _**`GET /countries/`**_ method to get the full list of countries. (e.g. `ru,ua`)
}

begin
  #Find models matching given high flotation tire
  result = api_instance.search_by_hf_tire_list(tire_diameter, tire_section_width, rim_diameter_hf, opts)
  p result
rescue WsApiClient::ApiError => e
  puts "Exception when calling SearchApi->search_by_hf_tire_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tire_diameter** | **Float**| Tire diameter, in (e.g. &#x60;31&#x60;) | 
 **tire_section_width** | **Float**| Tire section width, in (e.g. &#x60;10.5&#x60;) | 
 **rim_diameter_hf** | **Float**| Rim diameter, in (e.g. &#x60;15&#x60;) | 
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



# **search_by_model_list**
> Array&lt;Vehicle&gt; search_by_model_list(make, model, year, opts)

Find OE and option fitments by model/year/trim

Find OE and option fitments that match the given manufacturer, model, year and trim.  **It's an alias** for _**`GET /vehicles/`**_ method

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

api_instance = WsApiClient::SearchApi.new

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
  result = api_instance.search_by_model_list(make, model, year, opts)
  p result
rescue WsApiClient::ApiError => e
  puts "Exception when calling SearchApi->search_by_model_list: #{e}"
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



# **search_by_rim_list**
> Array&lt;MakeWithModels&gt; search_by_rim_list(bolt_pattern, rim_diameter, rim_width, opts)

Find models matching given rim parameters

Get a list of model modifications that match the given rim parameters, grouped by manufacturer.  It's an alias for _**`GET /bolt-patterns/{bolt_pattern}/`**_        method with given path and query parameters.

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

api_instance = WsApiClient::SearchApi.new

bolt_pattern = '\"5x105\"' # String | Bolt pattern combines number of stud holes and pitch circle diameter. Use _**`GET /bolt-patterns/`**_ to get possible values (e.g. `5x105`)

rim_diameter = 16 # Float | Rim diameter, in (e.g. `16`)

rim_width = 7 # Float | Rim width, in (e.g. `7`)

opts = { 
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
  #Find models matching given rim parameters
  result = api_instance.search_by_rim_list(bolt_pattern, rim_diameter, rim_width, opts)
  p result
rescue WsApiClient::ApiError => e
  puts "Exception when calling SearchApi->search_by_rim_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bolt_pattern** | **String**| Bolt pattern combines number of stud holes and pitch circle diameter. Use _**&#x60;GET /bolt-patterns/&#x60;**_ to get possible values (e.g. &#x60;5x105&#x60;) | 
 **rim_diameter** | **Float**| Rim diameter, in (e.g. &#x60;16&#x60;) | 
 **rim_width** | **Float**| Rim width, in (e.g. &#x60;7&#x60;) | 
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



# **search_by_tire_list**
> Array&lt;MakeWithModels&gt; search_by_tire_list(tire_width, aspect_ratio, rim_diameter, opts)

Find models matching given tire parameters

Get a list of model modifications matching given tire, grouped by manufacturer.  It's an alias for _**`GET /tire/{tire}/`**_ method  (tire configuration is combined of required tire width, aspect ratio and rim diameter).

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

api_instance = WsApiClient::SearchApi.new

tire_width = 195 # Float | Tire width, mm (e.g. `195`)

aspect_ratio = 50 # Float | Aspect ratio, % (e.g. `50`)

rim_diameter = 16 # Float | Rim diameter, in (e.g. `16`)

opts = { 
  lang: 'lang_example', # String | Use this parameter anywhere in the API to get *`name`* field translation of the following objects: **`Make`**, **`Model`**, **`Market`**. Across the *`name`* this objects will have *`name_en`* field with original english name. By default `en` language is used.  Available languages: `en,de,ru,es,pt,fr,ja,zh-cn,zh-tw`. Currently translation works for chinese `zh-cn` language only
  brands: 'brands_example', # String | Show information only for specified manufacturers. Use _**`GET /makes/`**_ method to get the full list. (e.g. `mitsubishi,nissan,toyota`)
  brands_exclude: 'brands_exclude_example', # String | Don't show information for specified manufacturers. Use _**`GET /makes/`**_ method to get the full list. (e.g. `geely,great-wall`)
  countries: 'countries_example', # String | Show information for local manufacturers from specified countries only. Use _**`GET /countries/`**_ method to get the full list of countries. (e.g. `us,gb,jp`)
  countries_exclude: 'countries_exclude_example' # String | Don't show information for local manufacturers from specified countries. Use _**`GET /countries/`**_ method to get the full list of countries. (e.g. `ru,ua`)
}

begin
  #Find models matching given tire parameters
  result = api_instance.search_by_tire_list(tire_width, aspect_ratio, rim_diameter, opts)
  p result
rescue WsApiClient::ApiError => e
  puts "Exception when calling SearchApi->search_by_tire_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tire_width** | **Float**| Tire width, mm (e.g. &#x60;195&#x60;) | 
 **aspect_ratio** | **Float**| Aspect ratio, % (e.g. &#x60;50&#x60;) | 
 **rim_diameter** | **Float**| Rim diameter, in (e.g. &#x60;16&#x60;) | 
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



