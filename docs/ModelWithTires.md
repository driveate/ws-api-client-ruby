# WsApiClient::ModelWithTires

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**make** | [**Make**](Make.md) |  | 
**model** | [**Model**](Model.md) |  | 
**year** | **Integer** | Selected year (e.g. &#x60;2015&#x60;, can be __*&#x60;null&#x60;*__) | 
**years** | **Array&lt;Integer&gt;** | Model production years | [optional] 
**generations** | [**Array&lt;Generation&gt;**](Generation.md) |  | 
**tires** | [**TiresAggregation**](TiresAggregation.md) |  | [optional] 
**rims** | [**Hash&lt;String, RimAgregation&gt;**](RimAgregation.md) | Each key is bolt pattern, e.g. *&#x60;5x105&#x60;* | [optional] 


