# WsApiClient::Vehicle

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**market** | [**Market**](Market.md) |  | [optional] 
**body** | **String** | Body name. Used extensively for JDM market (e.g. &#x60;GG2W&#x60;, can be __*&#x60;null&#x60;*__) | [optional] 
**trim** | **String** | Trim name. It can be empty for models created for JDM market (e.g. &#x60;2.0&#x60;, can be __*&#x60;null&#x60;*__) | [optional] 
**slug** | **String** | Combined trim, body, and generation identifier. Non-unique through markets (e.g. &#x60;20-gg2w-iii-restyling&#x60;) | [optional] 
**generation** | [**Generation**](Generation.md) |  | [optional] 
**stud_holes** | **Integer** | Number of stud holes (e.g. &#x60;5&#x60;, can be __*&#x60;null&#x60;*__) | [optional] 
**pcd** | **Float** | Pitch circle diameter, mm (e.g. &#x60;105&#x60;, can be __*&#x60;null&#x60;*__) | [optional] 
**centre_bore** | **Float** | Centre bore diameter, mm (e.g. &#x60;48.1&#x60;, can be __*&#x60;null&#x60;*__) | [optional] 
**lock_type** | **String** |  | [optional] 
**lock_text** | **String** | Lock thread size (e.g. &#x60;M12 x 1.25&#x60;, can be __*&#x60;null&#x60;*__) | [optional] 
**bolt_pattern** | **String** | Bolt pattern (e.g. &#x60;5x105&#x60;, can be __*&#x60;N/A&#x60;*__) | [optional] 
**power** | [**Power**](Power.md) |  | [optional] 
**engine_type** | **String** | Engine type (e.g. &#x60;V8&#x60;, can be __*&#x60;null&#x60;*__) | [optional] 
**fuel** | **String** | Fuel (e.g. &#x60;Petrol&#x60;, can be __*&#x60;null&#x60;*__) | [optional] 
**wheels** | [**Array&lt;WheelPair&gt;**](WheelPair.md) |  | [optional] 


