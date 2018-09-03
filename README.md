# noths

Noths - the Ruby gem for the www.notonthehighstreet.com API

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1.0
- Package version: 0.2.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build noths.gemspec
```

Then either install the gem locally:

```shell
gem install ./noths-0.2.0.gem
```
(for development, run `gem install --dev ./noths-0.2.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'noths', '~> 0.2.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/veeqo/noths, then add the following in the Gemfile:

    gem 'noths', :git => 'https://github.com/veeqo/noths.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
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

## Documentation for API Endpoints

All URIs are relative to https://api.notonthehighstreet.com

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Noths::OrdersApi* | [**orders_acceptance**](docs/OrdersApi.md#orders_acceptance) | **POST** /api/v1/orders/{id}/accept | Accept an order
*Noths::OrdersApi* | [**orders_acceptance_bulk**](docs/OrdersApi.md#orders_acceptance_bulk) | **POST** /api/v1/orders/accept | Accept multiple orders
*Noths::OrdersApi* | [**orders_decline**](docs/OrdersApi.md#orders_decline) | **POST** /api/v1/orders/{id}/decline | Decline an order
*Noths::OrdersApi* | [**orders_decline_bulk**](docs/OrdersApi.md#orders_decline_bulk) | **POST** /api/v1/orders/decline | Decline multiple orders
*Noths::OrdersApi* | [**orders_dispatch_note**](docs/OrdersApi.md#orders_dispatch_note) | **GET** /api/v1/orders/{id}/dispatch_note | Generate a dispatch note pdf or gift note pdf.
*Noths::OrdersApi* | [**orders_dispatch_notes_bulk**](docs/OrdersApi.md#orders_dispatch_notes_bulk) | **POST** /api/v1/orders/dispatch_notes | Generate pdf with dispatch note for each order
*Noths::OrdersApi* | [**orders_dispatch_order**](docs/OrdersApi.md#orders_dispatch_order) | **POST** /api/v1/orders/{id}/dispatch | Dispatch an order
*Noths::OrdersApi* | [**orders_dispatch_orders_bulk**](docs/OrdersApi.md#orders_dispatch_orders_bulk) | **POST** /api/v1/orders/dispatch | Dispatch multiple orders
*Noths::OrdersApi* | [**orders_index**](docs/OrdersApi.md#orders_index) | **GET** /api/v1/orders | Fetch orders
*Noths::OrdersApi* | [**orders_invoice**](docs/OrdersApi.md#orders_invoice) | **GET** /api/v1/orders/{id}/invoice | Generate a vat invoice pdf.
*Noths::OrdersApi* | [**orders_order_details**](docs/OrdersApi.md#orders_order_details) | **GET** /api/v1/orders/{id}/order_details | Generate an order details pdf
*Noths::OrdersApi* | [**orders_order_details_bulk**](docs/OrdersApi.md#orders_order_details_bulk) | **POST** /api/v1/orders/order_details | Generate pdf with order details for each order
*Noths::OrdersApi* | [**orders_show**](docs/OrdersApi.md#orders_show) | **GET** /api/v1/orders/{id} | Fetch a single Order
*Noths::RefundsApi* | [**refunds_create**](docs/RefundsApi.md#refunds_create) | **POST** /api/v1/orders/{order_id}/refunds | Refund an order


## Documentation for Models

 - [Noths::AcceptanceBulkModel](docs/AcceptanceBulkModel.md)
 - [Noths::Currency](docs/Currency.md)
 - [Noths::DeclineBulkModel](docs/DeclineBulkModel.md)
 - [Noths::DeliveryAddress](docs/DeliveryAddress.md)
 - [Noths::DeliveryService](docs/DeliveryService.md)
 - [Noths::DeliveryZone](docs/DeliveryZone.md)
 - [Noths::DispatchBulkModel](docs/DispatchBulkModel.md)
 - [Noths::DispatchNotesBulkModel](docs/DispatchNotesBulkModel.md)
 - [Noths::Enquiry](docs/Enquiry.md)
 - [Noths::EnquiryMessage](docs/EnquiryMessage.md)
 - [Noths::Error](docs/Error.md)
 - [Noths::Financials](docs/Financials.md)
 - [Noths::FinancialsDetails](docs/FinancialsDetails.md)
 - [Noths::ImageUrl](docs/ImageUrl.md)
 - [Noths::Item](docs/Item.md)
 - [Noths::ItemFinancials](docs/ItemFinancials.md)
 - [Noths::Link](docs/Link.md)
 - [Noths::ManualPayment](docs/ManualPayment.md)
 - [Noths::Money](docs/Money.md)
 - [Noths::Order](docs/Order.md)
 - [Noths::OrderDetail](docs/OrderDetail.md)
 - [Noths::OrderDetailsBulkModel](docs/OrderDetailsBulkModel.md)
 - [Noths::OrderIndex](docs/OrderIndex.md)
 - [Noths::OrderRefund](docs/OrderRefund.md)
 - [Noths::Product](docs/Product.md)
 - [Noths::ProductOption](docs/ProductOption.md)
 - [Noths::RefundResponse](docs/RefundResponse.md)
 - [Noths::SearchResultMeta](docs/SearchResultMeta.md)
 - [Noths::User](docs/User.md)


## Documentation for Authorization

 All endpoints do not require authorization.

