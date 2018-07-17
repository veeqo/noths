=begin
#Noths

#www.notonthehighstreet.com API client

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module Noths
  class RefundsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Refund an order
    # Refunds all or part of an order
    # @param order_id Order id
    # @param refund_reason Customer will see this message
    # @param cents 
    # @param [Hash] opts the optional parameters
    # @return [RefundResponse]
    def refunds_create(order_id, refund_reason, cents, opts = {})
      data, _status_code, _headers = refunds_create_with_http_info(order_id, refund_reason, cents, opts)
      return data
    end

    # Refund an order
    # Refunds all or part of an order
    # @param order_id Order id
    # @param refund_reason Customer will see this message
    # @param cents 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RefundResponse, Fixnum, Hash)>] RefundResponse data, response status code and response headers
    def refunds_create_with_http_info(order_id, refund_reason, cents, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RefundsApi.refunds_create ..."
      end
      # verify the required parameter 'order_id' is set
      if @api_client.config.client_side_validation && order_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_id' when calling RefundsApi.refunds_create"
      end
      # verify the required parameter 'refund_reason' is set
      if @api_client.config.client_side_validation && refund_reason.nil?
        fail ArgumentError, "Missing the required parameter 'refund_reason' when calling RefundsApi.refunds_create"
      end
      # verify the required parameter 'cents' is set
      if @api_client.config.client_side_validation && cents.nil?
        fail ArgumentError, "Missing the required parameter 'cents' when calling RefundsApi.refunds_create"
      end
      # resource path
      local_var_path = "/api/v1/orders/{order_id}/refunds".sub('{' + 'order_id' + '}', order_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}
      form_params["refund_reason"] = refund_reason
      form_params["cents"] = cents

      # http body (model)
      post_body = nil
      auth_names = ['token']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RefundResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RefundsApi#refunds_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end