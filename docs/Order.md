# Noths::Order

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | 
**state** | **String** |  | 
**confirm_by** | **Date** |  | 
**estimated_dispatch_at** | **Date** |  | 
**placed_at** | **Date** |  | 
**expired_at** | **Date** |  | 
**declined_at** | **Date** |  | 
**accepted_at** | **Date** |  | 
**dispatched_at** | **Date** |  | 
**archived_at** | **Date** |  | [optional] 
**repeat_customer** | **BOOLEAN** |  | 
**customer_expected_delivery_date** | **Date** |  | 
**number** | **String** |  | 
**dispatch_note_viewed** | **BOOLEAN** |  | 
**express** | **BOOLEAN** |  | 
**partner_name** | **String** |  | 
**delivery_recipient_name** | **String** |  | 
**delivery_recipient_first_name** | **String** |  | 
**delivery_recipient_last_name** | **String** |  | 
**international** | **BOOLEAN** |  | 
**dispatch_overdue** | **BOOLEAN** |  | 
**gift** | **BOOLEAN** |  | 
**gift_message** | **String** |  | 
**gift_wrap** | **BOOLEAN** |  | 
**gift_receipt** | **BOOLEAN** |  | 
**delivery_note** | **String** |  | 
**has_enquiry** | **BOOLEAN** |  | 
**estimated_delivery_date** | **Date** |  | 
**rebate_qualified** | **BOOLEAN** | null in sites where rebates are not offered | [optional] 
**rebate_achieved** | **BOOLEAN** | null in sites where rebates are not offered | [optional] 
**financials** | [**Financials**](Financials.md) |  | 
**promotion_discount** | **Integer** |  | 
**promotion_present** | **BOOLEAN** |  | 
**remaining_refund_amount** | [**Money**](Money.md) |  | 
**refund_total** | [**Money**](Money.md) |  | 
**extra_refund_amount** | [**Money**](Money.md) |  | 
**user** | [**User**](User.md) |  | 
**delivery_address** | [**DeliveryAddress**](DeliveryAddress.md) |  | 
**delivery_zone** | [**DeliveryZone**](DeliveryZone.md) |  | 
**delivery_service** | [**DeliveryService**](DeliveryService.md) |  | 
**order_detail** | [**OrderDetail**](OrderDetail.md) |  | 
**order_total** | [**Money**](Money.md) |  | 
**delivery_total** | [**Money**](Money.md) |  | 
**enquiry** | [**Enquiry**](Enquiry.md) |  | 
**items** | [**Item**](Item.md) |  | 
**links** | [**Array&lt;Link&gt;**](Link.md) |  | 


