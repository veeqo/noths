# Noths::RefundsApi

All URIs are relative to https://api.notonthehighstreet.com

Method | HTTP request | Description
------------- | ------------- | -------------
[**refunds_create**](RefundsApi.md#refunds_create) | **POST** /api/v1/orders/{order_id}/refunds | Refund an order


# **refunds_create**
> RefundResponse refunds_create(token, order_id, refund_reason, cents)

Refund an order

Refunds all or part of an order

### Example
```ruby
# load the gem
require 'noths'

api_instance = Noths::RefundsApi.new

token = "token_example" # String | Authentication credential

order_id = 56 # Integer | Order id

refund_reason = "refund_reason_example" # String | Customer will see this message

cents = 56 # Integer | 


begin
  #Refund an order
  result = api_instance.refunds_create(token, order_id, refund_reason, cents)
  p result
rescue Noths::ApiError => e
  puts "Exception when calling RefundsApi->refunds_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| Authentication credential | 
 **order_id** | **Integer**| Order id | 
 **refund_reason** | **String**| Customer will see this message | 
 **cents** | **Integer**|  | 

### Return type

[**RefundResponse**](RefundResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: Not defined



