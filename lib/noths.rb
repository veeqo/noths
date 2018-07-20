# frozen_string_literal: true

# Common files
require 'noths/api_client'
require 'noths/api_error'
require 'noths/version'
require 'noths/configuration'

# Models
require 'noths/models/acceptance_bulk_model'
require 'noths/models/currency'
require 'noths/models/decline_bulk_model'
require 'noths/models/delivery_address'
require 'noths/models/delivery_service'
require 'noths/models/delivery_zone'
require 'noths/models/dispatch_bulk_model'
require 'noths/models/dispatch_notes_bulk_model'
require 'noths/models/enquiry'
require 'noths/models/enquiry_message'
require 'noths/models/error'
require 'noths/models/financials'
require 'noths/models/financials_details'
require 'noths/models/image_url'
require 'noths/models/item'
require 'noths/models/item_financials'
require 'noths/models/link'
require 'noths/models/manual_payment'
require 'noths/models/money'
require 'noths/models/order'
require 'noths/models/order_detail'
require 'noths/models/order_details_bulk_model'
require 'noths/models/order_index'
require 'noths/models/order_refund'
require 'noths/models/product'
require 'noths/models/product_option'
require 'noths/models/refund_response'
require 'noths/models/search_result_meta'
require 'noths/models/user'

# APIs
require 'noths/api/orders_api'
require 'noths/api/refunds_api'

module Noths
  class << self
    # Customize default settings for the SDK using block.
    #   Noths.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
