# WsApiClient::ModelWithTrims

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**slug** | **String** | Model name (e.g. &#x60;Outlander&#x60;) | 
**name** | **String** | Model slug name (e.g. &#x60;outlander&#x60;) | 
**start_year** | **String** | Model production start year. It should be &#39;integer&#39; but it is used as &#39;string&#39; by historical reasons. | 
**end_year** | **String** | Model production end year. It should be &#39;integer&#39; but it is used as &#39;string&#39; by  historical reasons.  It equals to the __*&#x60;current year + 1&#x60;*__ if it is still in production. | 
**vehicles** | [**Array&lt;TrimWithMarketAndYears&gt;**](TrimWithMarketAndYears.md) |  | 


