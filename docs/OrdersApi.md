# Noths::OrdersApi

All URIs are relative to https://api.notonthehighstreet.com

Method | HTTP request | Description
------------- | ------------- | -------------
[**orders_acceptance**](OrdersApi.md#orders_acceptance) | **POST** /api/v1/orders/{id}/accept | Accept an order
[**orders_acceptance_bulk**](OrdersApi.md#orders_acceptance_bulk) | **POST** /api/v1/orders/accept | Accept multiple orders
[**orders_decline**](OrdersApi.md#orders_decline) | **POST** /api/v1/orders/{id}/decline | Decline an order
[**orders_decline_bulk**](OrdersApi.md#orders_decline_bulk) | **POST** /api/v1/orders/decline | Decline multiple orders
[**orders_dispatch_note**](OrdersApi.md#orders_dispatch_note) | **GET** /api/v1/orders/{id}/dispatch_note | Generate a dispatch note pdf or gift note pdf.
[**orders_dispatch_notes_bulk**](OrdersApi.md#orders_dispatch_notes_bulk) | **POST** /api/v1/orders/dispatch_notes | Generate pdf with dispatch note for each order
[**orders_dispatch_order**](OrdersApi.md#orders_dispatch_order) | **POST** /api/v1/orders/{id}/dispatch | Dispatch an order
[**orders_dispatch_orders_bulk**](OrdersApi.md#orders_dispatch_orders_bulk) | **POST** /api/v1/orders/dispatch | Dispatch multiple orders
[**orders_index**](OrdersApi.md#orders_index) | **GET** /api/v1/orders | Fetch orders
[**orders_invoice**](OrdersApi.md#orders_invoice) | **GET** /api/v1/orders/{id}/invoice | Generate a vat invoice pdf.
[**orders_order_details**](OrdersApi.md#orders_order_details) | **GET** /api/v1/orders/{id}/order_details | Generate an order details pdf
[**orders_order_details_bulk**](OrdersApi.md#orders_order_details_bulk) | **POST** /api/v1/orders/order_details | Generate pdf with order details for each order
[**orders_show**](OrdersApi.md#orders_show) | **GET** /api/v1/orders/{id} | Fetch a single Order


# **orders_acceptance**
> orders_acceptance(token, id, estimated_delivery_date, estimated_dispatch_at, opts)

Accept an order

          Accept an order that is in the placed state.           Note: In rare instances orders may not transition to the 'accepted' state           immediately. 

### Example
```ruby
# load the gem
require 'noths'

api_instance = Noths::OrdersApi.new

token = "token_example" # String | Authentication credential

id = 56 # Integer | Order id

estimated_delivery_date = Date.parse("2013-10-20") # Date | 'yyyy-mm-dd'

estimated_dispatch_at = Date.parse("2013-10-20") # Date | 'yyyy-mm-dd'

opts = { 
  confirmation_note: "confirmation_note_example" # String | 
}

begin
  #Accept an order
  api_instance.orders_acceptance(token, id, estimated_delivery_date, estimated_dispatch_at, opts)
rescue Noths::ApiError => e
  puts "Exception when calling OrdersApi->orders_acceptance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| Authentication credential | 
 **id** | **Integer**| Order id | 
 **estimated_delivery_date** | **Date**| &#39;yyyy-mm-dd&#39; | 
 **estimated_dispatch_at** | **Date**| &#39;yyyy-mm-dd&#39; | 
 **confirmation_note** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: Not defined



# **orders_acceptance_bulk**
> orders_acceptance_bulk(token, payload)

Accept multiple orders

Returns an array of hashes containing order ids and status codes. A status code of 200 indicates that the order was eligible to be accepted and is expected to be processed successfully. This is not a guarantee that the order will be accepted. Processing acceptance is not instantaneous and may take some time while funds are captured.     Example response:     <pre>     [       {         \"id\": 12,         \"status\": 200,         \"errors\": []       },       {         \"id\": 22,         \"status\": 404,         \"errors\": [           {             \"code\": \"RESOURCE_NOT_FOUND\",             \"title\": \"Couldn't find the requested resource\"           }         ]       }     ]     </pre> 

### Example
```ruby
# load the gem
require 'noths'

api_instance = Noths::OrdersApi.new

token = "token_example" # String | Authentication credential

payload = [Noths::AcceptanceBulkModel.new] # Array<AcceptanceBulkModel> | 


begin
  #Accept multiple orders
  api_instance.orders_acceptance_bulk(token, payload)
rescue Noths::ApiError => e
  puts "Exception when calling OrdersApi->orders_acceptance_bulk: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| Authentication credential | 
 **payload** | [**Array&lt;AcceptanceBulkModel&gt;**](AcceptanceBulkModel.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: Not defined



# **orders_decline**
> orders_decline(token, id, decline_reason)

Decline an order

Declines an order that is in the placed state

### Example
```ruby
# load the gem
require 'noths'

api_instance = Noths::OrdersApi.new

token = "token_example" # String | Authentication credential

id = 56 # Integer | Order id

decline_reason = "decline_reason_example" # String | 


begin
  #Decline an order
  api_instance.orders_decline(token, id, decline_reason)
rescue Noths::ApiError => e
  puts "Exception when calling OrdersApi->orders_decline: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| Authentication credential | 
 **id** | **Integer**| Order id | 
 **decline_reason** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: Not defined



# **orders_decline_bulk**
> orders_decline_bulk(token, payload)

Decline multiple orders

Returns an array of hashes containing order ids and status codes. A status code of 200       indicates a successful update whereas a code of 400 indicates failure.     Example response:     <pre>     [       {         \"id\": 12,         \"status\": 200,         \"errors\": []       },       {         \"id\": 22,         \"status\": 404,         \"errors\": [           {             \"code\": \"RESOURCE_NOT_FOUND\",             \"title\": \"Couldn't find the requested resource\"           }         ]       }     ]     </pre> 

### Example
```ruby
# load the gem
require 'noths'

api_instance = Noths::OrdersApi.new

token = "token_example" # String | Authentication credential

payload = [Noths::DeclineBulkModel.new] # Array<DeclineBulkModel> | 


begin
  #Decline multiple orders
  api_instance.orders_decline_bulk(token, payload)
rescue Noths::ApiError => e
  puts "Exception when calling OrdersApi->orders_decline_bulk: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| Authentication credential | 
 **payload** | [**Array&lt;DeclineBulkModel&gt;**](DeclineBulkModel.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: Not defined



# **orders_dispatch_note**
> File orders_dispatch_note(token, id, opts)

Generate a dispatch note pdf or gift note pdf.

Force the kind of document by passing the force_type parameter. A gift note can only be printed for an order that is a gift, which will be the default behaviour.<p/>Here is an example of how to obtain a pdf using curl:       <pre>curl -XPOST [URL] > document.pdf</pre>

### Example
```ruby
# load the gem
require 'noths'

api_instance = Noths::OrdersApi.new

token = "token_example" # String | Authentication credential

id = 56 # Integer | Order id

opts = { 
  force_type: "force_type_example" # String | Type of document
}

begin
  #Generate a dispatch note pdf or gift note pdf.
  result = api_instance.orders_dispatch_note(token, id, opts)
  p result
rescue Noths::ApiError => e
  puts "Exception when calling OrdersApi->orders_dispatch_note: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| Authentication credential | 
 **id** | **Integer**| Order id | 
 **force_type** | **String**| Type of document | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf, application/json



# **orders_dispatch_notes_bulk**
> File orders_dispatch_notes_bulk(token, payload)

Generate pdf with dispatch note for each order

<p/> Here is an example of how to obtain a pdf using curl:       <pre>curl -H \"Content-Type: application/json\" -d '[{\"id\": 123}, {\"id\": 456}]' -XPOST [URL] > document.pdf</pre><p/>       Ensure that the Content-Type header is set to \"Content-Type: application/json\".<p/>

### Example
```ruby
# load the gem
require 'noths'

api_instance = Noths::OrdersApi.new

token = "token_example" # String | Authentication credential

payload = [Noths::DispatchNotesBulkModel.new] # Array<DispatchNotesBulkModel> | 


begin
  #Generate pdf with dispatch note for each order
  result = api_instance.orders_dispatch_notes_bulk(token, payload)
  p result
rescue Noths::ApiError => e
  puts "Exception when calling OrdersApi->orders_dispatch_notes_bulk: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| Authentication credential | 
 **payload** | [**Array&lt;DispatchNotesBulkModel&gt;**](DispatchNotesBulkModel.md)|  | 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/pdf, application/json



# **orders_dispatch_order**
> orders_dispatch_order(token, id, estimated_delivery_date, opts)

Dispatch an order

Dispatches an order that is in an accepted state and has also had its dispatch note printed

### Example
```ruby
# load the gem
require 'noths'

api_instance = Noths::OrdersApi.new

token = "token_example" # String | Authentication credential

id = 56 # Integer | Order id

estimated_delivery_date = Date.parse("2013-10-20") # Date | 'yyyy-mm-dd'

opts = { 
  resolve_enquiry: true, # BOOLEAN | 
  tracking_number: "tracking_number_example", # String | 
  parcel_tracking_url: "parcel_tracking_url_example", # String | 
  ignore_unresolved_enquiries: true # BOOLEAN | Defaults to false
}

begin
  #Dispatch an order
  api_instance.orders_dispatch_order(token, id, estimated_delivery_date, opts)
rescue Noths::ApiError => e
  puts "Exception when calling OrdersApi->orders_dispatch_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| Authentication credential | 
 **id** | **Integer**| Order id | 
 **estimated_delivery_date** | **Date**| &#39;yyyy-mm-dd&#39; | 
 **resolve_enquiry** | **BOOLEAN**|  | [optional] 
 **tracking_number** | **String**|  | [optional] 
 **parcel_tracking_url** | **String**|  | [optional] 
 **ignore_unresolved_enquiries** | **BOOLEAN**| Defaults to false | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: Not defined



# **orders_dispatch_orders_bulk**
> orders_dispatch_orders_bulk(token, payload, opts)

Dispatch multiple orders

Returns an array of hashes containing order ids and status codes. A status code of 200       indicates a successful update whereas a code of 400 indicates failure.     Example response:     <pre>     [       {         \"id\": 12,         \"status\": 200,         \"errors\": []       },       {         \"id\": 22,         \"status\": 404,         \"errors\": [           {             \"code\": \"RESOURCE_NOT_FOUND\",             \"title\": \"Couldn't find the requested resource\"           }         ]       }     ]     </pre> 

### Example
```ruby
# load the gem
require 'noths'

api_instance = Noths::OrdersApi.new

token = "token_example" # String | Authentication credential

payload = [Noths::DispatchBulkModel.new] # Array<DispatchBulkModel> | 

opts = { 
  ignore_unresolved_enquiries: true # BOOLEAN | Defaults to false
}

begin
  #Dispatch multiple orders
  api_instance.orders_dispatch_orders_bulk(token, payload, opts)
rescue Noths::ApiError => e
  puts "Exception when calling OrdersApi->orders_dispatch_orders_bulk: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| Authentication credential | 
 **payload** | [**Array&lt;DispatchBulkModel&gt;**](DispatchBulkModel.md)|  | 
 **ignore_unresolved_enquiries** | **BOOLEAN**| Defaults to false | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: Not defined



# **orders_index**
> OrderIndex orders_index(token, opts)

Fetch orders

Lists orders descending by placed at time by default.<p/>If you just want a count, use per_page=0 and offset=0 .

### Example
```ruby
# load the gem
require 'noths'

api_instance = Noths::OrdersApi.new

token = "token_example" # String | Authentication credential

opts = { 
  customer_expected_delivery_date_from: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Earliest customer_expected_delivery_date datetime - format iso8601 eg '2011-10-05T22:26:12-04:00'
  customer_expected_delivery_date_to: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Latest customer_expected_delivery_date datetime - format iso8601 eg '2011-10-05T22:26:12-04:00'
  delivery_service_code: "delivery_service_code_example", # String | Delivery service code
  delivery_zone_ids: "delivery_zone_ids_example", # String | List of delivery zone ids
  dir: "dir_example", # String | Direction (defaults to desc)
  dispatch_note_viewed: true, # BOOLEAN | 
  enquiry_state: "enquiry_state_example", # String |           Enquiry state where `unresolved` includes `opened`, `acknowledged` and `overdue` 
  estimated_delivery_date_from: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Earliest estimated_delivery_date datetime - format iso8601 eg '2011-10-05T22:26:12-04:00'
  estimated_delivery_date_to: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Latest estimated_delivery_date datetime - format iso8601 eg '2011-10-05T22:26:12-04:00'
  estimated_dispatch_at_from: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Earliest estimated_dispatch_at datetime - format iso8601 eg '2011-10-05T22:26:12-04:00'
  estimated_dispatch_at_to: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Latest estimated_dispatch_at datetime - format iso8601 eg '2011-10-05T22:26:12-04:00'
  updated_at_from: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Earliest updated_at datetime - format iso8601 eg '2011-10-05T22:26:12-04:00'. Is not changed on nested resource updates eg 'Enquiry'
  updated_at_to: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Latest updated_at datetime - format iso8601 eg '2011-10-05T22:26:12-04:00'. Is not changed on nested resource updates eg 'Enquiry'
  gift: true, # BOOLEAN | 
  unresolved_enquiry: true, # BOOLEAN | 
  ids: "ids_example", # String | List of order ids
  offset: 56, # Integer | 
  per_page: 56, # Integer | Defaults to 30, maximum is 250
  product_ids: "product_ids_example", # String | List of product ids
  query: "query_example", # String | Matches your query to information related to your orders
  repeat_customer: true, # BOOLEAN | 
  sort: "sort_example", # String | Defaults to placed_at
  state: "state_example" # String | State
}

begin
  #Fetch orders
  result = api_instance.orders_index(token, opts)
  p result
rescue Noths::ApiError => e
  puts "Exception when calling OrdersApi->orders_index: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| Authentication credential | 
 **customer_expected_delivery_date_from** | **DateTime**| Earliest customer_expected_delivery_date datetime - format iso8601 eg &#39;2011-10-05T22:26:12-04:00&#39; | [optional] 
 **customer_expected_delivery_date_to** | **DateTime**| Latest customer_expected_delivery_date datetime - format iso8601 eg &#39;2011-10-05T22:26:12-04:00&#39; | [optional] 
 **delivery_service_code** | **String**| Delivery service code | [optional] 
 **delivery_zone_ids** | **String**| List of delivery zone ids | [optional] 
 **dir** | **String**| Direction (defaults to desc) | [optional] 
 **dispatch_note_viewed** | **BOOLEAN**|  | [optional] 
 **enquiry_state** | **String**|           Enquiry state where &#x60;unresolved&#x60; includes &#x60;opened&#x60;, &#x60;acknowledged&#x60; and &#x60;overdue&#x60;  | [optional] 
 **estimated_delivery_date_from** | **DateTime**| Earliest estimated_delivery_date datetime - format iso8601 eg &#39;2011-10-05T22:26:12-04:00&#39; | [optional] 
 **estimated_delivery_date_to** | **DateTime**| Latest estimated_delivery_date datetime - format iso8601 eg &#39;2011-10-05T22:26:12-04:00&#39; | [optional] 
 **estimated_dispatch_at_from** | **DateTime**| Earliest estimated_dispatch_at datetime - format iso8601 eg &#39;2011-10-05T22:26:12-04:00&#39; | [optional] 
 **estimated_dispatch_at_to** | **DateTime**| Latest estimated_dispatch_at datetime - format iso8601 eg &#39;2011-10-05T22:26:12-04:00&#39; | [optional] 
 **updated_at_from** | **DateTime**| Earliest updated_at datetime - format iso8601 eg &#39;2011-10-05T22:26:12-04:00&#39;. Is not changed on nested resource updates eg &#39;Enquiry&#39; | [optional] 
 **updated_at_to** | **DateTime**| Latest updated_at datetime - format iso8601 eg &#39;2011-10-05T22:26:12-04:00&#39;. Is not changed on nested resource updates eg &#39;Enquiry&#39; | [optional] 
 **gift** | **BOOLEAN**|  | [optional] 
 **unresolved_enquiry** | **BOOLEAN**|  | [optional] 
 **ids** | **String**| List of order ids | [optional] 
 **offset** | **Integer**|  | [optional] 
 **per_page** | **Integer**| Defaults to 30, maximum is 250 | [optional] 
 **product_ids** | **String**| List of product ids | [optional] 
 **query** | **String**| Matches your query to information related to your orders | [optional] 
 **repeat_customer** | **BOOLEAN**|  | [optional] 
 **sort** | **String**| Defaults to placed_at | [optional] 
 **state** | **String**| State | [optional] 

### Return type

[**OrderIndex**](OrderIndex.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **orders_invoice**
> File orders_invoice(token, id, type)

Generate a vat invoice pdf.

<p>Invoices are currently only applicable for the UK site</p>Here is an example of how to obtain a pdf using curl:       <pre>curl -XPOST [URL] > document.pdf</pre>

### Example
```ruby
# load the gem
require 'noths'

api_instance = Noths::OrdersApi.new

token = "token_example" # String | Authentication credential

id = 56 # Integer | Order id

type = "type_example" # String | Type of invoice


begin
  #Generate a vat invoice pdf.
  result = api_instance.orders_invoice(token, id, type)
  p result
rescue Noths::ApiError => e
  puts "Exception when calling OrdersApi->orders_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| Authentication credential | 
 **id** | **Integer**| Order id | 
 **type** | **String**| Type of invoice | 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf, application/json



# **orders_order_details**
> File orders_order_details(token, id)

Generate an order details pdf

Here is an example of how to obtain a pdf using curl:       <pre>curl -XPOST [URL] > document.pdf</pre>

### Example
```ruby
# load the gem
require 'noths'

api_instance = Noths::OrdersApi.new

token = "token_example" # String | Authentication credential

id = 56 # Integer | Order id


begin
  #Generate an order details pdf
  result = api_instance.orders_order_details(token, id)
  p result
rescue Noths::ApiError => e
  puts "Exception when calling OrdersApi->orders_order_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| Authentication credential | 
 **id** | **Integer**| Order id | 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf, application/json



# **orders_order_details_bulk**
> File orders_order_details_bulk(token, payload)

Generate pdf with order details for each order

<p/> Here is an example of how to obtain a pdf using curl:       <pre>curl -H \"Content-Type: application/json\" -d '[{\"id\": 123}, {\"id\": 456}]' -XPOST [URL] > document.pdf</pre><p/>       Ensure that the Content-Type header is set to \"Content-Type: application/json\".<p/>

### Example
```ruby
# load the gem
require 'noths'

api_instance = Noths::OrdersApi.new

token = "token_example" # String | Authentication credential

payload = [Noths::OrderDetailsBulkModel.new] # Array<OrderDetailsBulkModel> | 


begin
  #Generate pdf with order details for each order
  result = api_instance.orders_order_details_bulk(token, payload)
  p result
rescue Noths::ApiError => e
  puts "Exception when calling OrdersApi->orders_order_details_bulk: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| Authentication credential | 
 **payload** | [**Array&lt;OrderDetailsBulkModel&gt;**](OrderDetailsBulkModel.md)|  | 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/pdf, application/json



# **orders_show**
> Order orders_show(token, id, opts)

Fetch a single Order

### Example
```ruby
# load the gem
require 'noths'

api_instance = Noths::OrdersApi.new

token = "token_example" # String | Authentication credential

id = 56 # Integer | Order Id

opts = { 
  include: "include_example" # String |         Comma separated list of nodes to expand. Currently the available values are:         <br /><b style=\"margin-left: 10px\">financials</b>         <p style=\"margin-left: 20px\">           Additional financial data about this order, eg: commission and discount amounts.         </p> 
}

begin
  #Fetch a single Order
  result = api_instance.orders_show(token, id, opts)
  p result
rescue Noths::ApiError => e
  puts "Exception when calling OrdersApi->orders_show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| Authentication credential | 
 **id** | **Integer**| Order Id | 
 **include** | **String**|         Comma separated list of nodes to expand. Currently the available values are:         &lt;br /&gt;&lt;b style&#x3D;\&quot;margin-left: 10px\&quot;&gt;financials&lt;/b&gt;         &lt;p style&#x3D;\&quot;margin-left: 20px\&quot;&gt;           Additional financial data about this order, eg: commission and discount amounts.         &lt;/p&gt;  | [optional] 

### Return type

[**Order**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



