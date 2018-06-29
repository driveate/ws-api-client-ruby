# WsApiClient::ModelWithTires

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**make** | [**Make**](Make.md) |  | [optional] 
**model** | [**Model**](Model.md) |  | [optional] 
**year** | **Integer** | Selected year (e.g. &#x60;2015&#x60;, can be __*&#x60;null&#x60;*__) | [optional] 
**years** | **Array&lt;Integer&gt;** | Model production years | [optional] 
**generations** | [**Array&lt;Generation&gt;**](Generation.md) |  | [optional] 
**tires** | [**TiresAggregation**](TiresAggregation.md) |  | [optional] 
**rims** | [**Hash&lt;String, RimAgregation&gt;**](RimAgregation.md) | Each key is bolt pattern, e.g. *&#x60;5x105&#x60;* | [optional] 


