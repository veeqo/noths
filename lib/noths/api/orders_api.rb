# frozen_string_literal: true

require "uri"

module Noths
  class OrdersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Accept an order
    #           Accept an order that is in the placed state.           Note: In rare instances orders may not transition to the 'accepted' state           immediately. 
    # @param token Authentication credential
    # @param id Order id
    # @param estimated_delivery_date &#39;yyyy-mm-dd&#39;
    # @param estimated_dispatch_at &#39;yyyy-mm-dd&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :confirmation_note 
    # @return [nil]
    def orders_acceptance(token, id, estimated_delivery_date, estimated_dispatch_at, opts = {})
      orders_acceptance_with_http_info(token, id, estimated_delivery_date, estimated_dispatch_at, opts)
      return nil
    end

    # Accept an order
    #           Accept an order that is in the placed state.           Note: In rare instances orders may not transition to the &#39;accepted&#39; state           immediately. 
    # @param token Authentication credential
    # @param id Order id
    # @param estimated_delivery_date &#39;yyyy-mm-dd&#39;
    # @param estimated_dispatch_at &#39;yyyy-mm-dd&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :confirmation_note 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def orders_acceptance_with_http_info(token, id, estimated_delivery_date, estimated_dispatch_at, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrdersApi.orders_acceptance ..."
      end
      # verify the required parameter 'token' is set
      if @api_client.config.client_side_validation && token.nil?
        fail ArgumentError, "Missing the required parameter 'token' when calling OrdersApi.orders_acceptance"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrdersApi.orders_acceptance"
      end
      # verify the required parameter 'estimated_delivery_date' is set
      if @api_client.config.client_side_validation && estimated_delivery_date.nil?
        fail ArgumentError, "Missing the required parameter 'estimated_delivery_date' when calling OrdersApi.orders_acceptance"
      end
      # verify the required parameter 'estimated_dispatch_at' is set
      if @api_client.config.client_side_validation && estimated_dispatch_at.nil?
        fail ArgumentError, "Missing the required parameter 'estimated_dispatch_at' when calling OrdersApi.orders_acceptance"
      end
      # resource path
      local_var_path = "/api/v1/orders/{id}/accept".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'token'] = token

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}
      form_params["estimated_delivery_date"] = estimated_delivery_date
      form_params["estimated_dispatch_at"] = estimated_dispatch_at
      form_params["confirmation_note"] = opts[:'confirmation_note'] if !opts[:'confirmation_note'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#orders_acceptance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Accept multiple orders
    # Returns an array of hashes containing order ids and status codes. A status code of 200 indicates that the order was eligible to be accepted and is expected to be processed successfully. This is not a guarantee that the order will be accepted. Processing acceptance is not instantaneous and may take some time while funds are captured.     Example response:     <pre>     [       {         \"id\": 12,         \"status\": 200,         \"errors\": []       },       {         \"id\": 22,         \"status\": 404,         \"errors\": [           {             \"code\": \"RESOURCE_NOT_FOUND\",             \"title\": \"Couldn't find the requested resource\"           }         ]       }     ]     </pre> 
    # @param token Authentication credential
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def orders_acceptance_bulk(token, payload, opts = {})
      orders_acceptance_bulk_with_http_info(token, payload, opts)
      return nil
    end

    # Accept multiple orders
    # Returns an array of hashes containing order ids and status codes. A status code of 200 indicates that the order was eligible to be accepted and is expected to be processed successfully. This is not a guarantee that the order will be accepted. Processing acceptance is not instantaneous and may take some time while funds are captured.     Example response:     &lt;pre&gt;     [       {         \&quot;id\&quot;: 12,         \&quot;status\&quot;: 200,         \&quot;errors\&quot;: []       },       {         \&quot;id\&quot;: 22,         \&quot;status\&quot;: 404,         \&quot;errors\&quot;: [           {             \&quot;code\&quot;: \&quot;RESOURCE_NOT_FOUND\&quot;,             \&quot;title\&quot;: \&quot;Couldn&#39;t find the requested resource\&quot;           }         ]       }     ]     &lt;/pre&gt; 
    # @param token Authentication credential
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def orders_acceptance_bulk_with_http_info(token, payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrdersApi.orders_acceptance_bulk ..."
      end
      # verify the required parameter 'token' is set
      if @api_client.config.client_side_validation && token.nil?
        fail ArgumentError, "Missing the required parameter 'token' when calling OrdersApi.orders_acceptance_bulk"
      end
      # verify the required parameter 'payload' is set
      if @api_client.config.client_side_validation && payload.nil?
        fail ArgumentError, "Missing the required parameter 'payload' when calling OrdersApi.orders_acceptance_bulk"
      end
      # resource path
      local_var_path = "/api/v1/orders/accept"

      # query parameters
      query_params = {}
      query_params[:'token'] = token

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(payload)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#orders_acceptance_bulk\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Decline an order
    # Declines an order that is in the placed state
    # @param token Authentication credential
    # @param id Order id
    # @param decline_reason 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def orders_decline(token, id, decline_reason, opts = {})
      orders_decline_with_http_info(token, id, decline_reason, opts)
      return nil
    end

    # Decline an order
    # Declines an order that is in the placed state
    # @param token Authentication credential
    # @param id Order id
    # @param decline_reason 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def orders_decline_with_http_info(token, id, decline_reason, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrdersApi.orders_decline ..."
      end
      # verify the required parameter 'token' is set
      if @api_client.config.client_side_validation && token.nil?
        fail ArgumentError, "Missing the required parameter 'token' when calling OrdersApi.orders_decline"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrdersApi.orders_decline"
      end
      # verify the required parameter 'decline_reason' is set
      if @api_client.config.client_side_validation && decline_reason.nil?
        fail ArgumentError, "Missing the required parameter 'decline_reason' when calling OrdersApi.orders_decline"
      end
      # resource path
      local_var_path = "/api/v1/orders/{id}/decline".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'token'] = token

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}
      form_params["decline_reason"] = decline_reason

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#orders_decline\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Decline multiple orders
    # Returns an array of hashes containing order ids and status codes. A status code of 200       indicates a successful update whereas a code of 400 indicates failure.     Example response:     <pre>     [       {         \"id\": 12,         \"status\": 200,         \"errors\": []       },       {         \"id\": 22,         \"status\": 404,         \"errors\": [           {             \"code\": \"RESOURCE_NOT_FOUND\",             \"title\": \"Couldn't find the requested resource\"           }         ]       }     ]     </pre> 
    # @param token Authentication credential
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def orders_decline_bulk(token, payload, opts = {})
      orders_decline_bulk_with_http_info(token, payload, opts)
      return nil
    end

    # Decline multiple orders
    # Returns an array of hashes containing order ids and status codes. A status code of 200       indicates a successful update whereas a code of 400 indicates failure.     Example response:     &lt;pre&gt;     [       {         \&quot;id\&quot;: 12,         \&quot;status\&quot;: 200,         \&quot;errors\&quot;: []       },       {         \&quot;id\&quot;: 22,         \&quot;status\&quot;: 404,         \&quot;errors\&quot;: [           {             \&quot;code\&quot;: \&quot;RESOURCE_NOT_FOUND\&quot;,             \&quot;title\&quot;: \&quot;Couldn&#39;t find the requested resource\&quot;           }         ]       }     ]     &lt;/pre&gt; 
    # @param token Authentication credential
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def orders_decline_bulk_with_http_info(token, payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrdersApi.orders_decline_bulk ..."
      end
      # verify the required parameter 'token' is set
      if @api_client.config.client_side_validation && token.nil?
        fail ArgumentError, "Missing the required parameter 'token' when calling OrdersApi.orders_decline_bulk"
      end
      # verify the required parameter 'payload' is set
      if @api_client.config.client_side_validation && payload.nil?
        fail ArgumentError, "Missing the required parameter 'payload' when calling OrdersApi.orders_decline_bulk"
      end
      # resource path
      local_var_path = "/api/v1/orders/decline"

      # query parameters
      query_params = {}
      query_params[:'token'] = token

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(payload)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#orders_decline_bulk\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate a dispatch note pdf or gift note pdf.
    # Force the kind of document by passing the force_type parameter. A gift note can only be printed for an order that is a gift, which will be the default behaviour.<p/>Here is an example of how to obtain a pdf using curl:       <pre>curl -XPOST [URL] > document.pdf</pre>
    # @param token Authentication credential
    # @param id Order id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :force_type Type of document
    # @return [File]
    def orders_dispatch_note(token, id, opts = {})
      data, _status_code, _headers = orders_dispatch_note_with_http_info(token, id, opts)
      return data
    end

    # Generate a dispatch note pdf or gift note pdf.
    # Force the kind of document by passing the force_type parameter. A gift note can only be printed for an order that is a gift, which will be the default behaviour.&lt;p/&gt;Here is an example of how to obtain a pdf using curl:       &lt;pre&gt;curl -XPOST [URL] &gt; document.pdf&lt;/pre&gt;
    # @param token Authentication credential
    # @param id Order id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :force_type Type of document
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def orders_dispatch_note_with_http_info(token, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrdersApi.orders_dispatch_note ..."
      end
      # verify the required parameter 'token' is set
      if @api_client.config.client_side_validation && token.nil?
        fail ArgumentError, "Missing the required parameter 'token' when calling OrdersApi.orders_dispatch_note"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrdersApi.orders_dispatch_note"
      end
      if @api_client.config.client_side_validation && opts[:'force_type'] && !['regular'].include?(opts[:'force_type'])
        fail ArgumentError, 'invalid value for "force_type", must be one of regular'
      end
      # resource path
      local_var_path = "/api/v1/orders/{id}/dispatch_note".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'token'] = token
      query_params[:'force_type'] = opts[:'force_type'] if !opts[:'force_type'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/pdf', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#orders_dispatch_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate pdf with dispatch note for each order
    # <p/> Here is an example of how to obtain a pdf using curl:       <pre>curl -H \"Content-Type: application/json\" -d '[{\"id\": 123}, {\"id\": 456}]' -XPOST [URL] > document.pdf</pre><p/>       Ensure that the Content-Type header is set to \"Content-Type: application/json\".<p/>
    # @param token Authentication credential
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @return [File]
    def orders_dispatch_notes_bulk(token, payload, opts = {})
      data, _status_code, _headers = orders_dispatch_notes_bulk_with_http_info(token, payload, opts)
      return data
    end

    # Generate pdf with dispatch note for each order
    # &lt;p/&gt; Here is an example of how to obtain a pdf using curl:       &lt;pre&gt;curl -H \&quot;Content-Type: application/json\&quot; -d &#39;[{\&quot;id\&quot;: 123}, {\&quot;id\&quot;: 456}]&#39; -XPOST [URL] &gt; document.pdf&lt;/pre&gt;&lt;p/&gt;       Ensure that the Content-Type header is set to \&quot;Content-Type: application/json\&quot;.&lt;p/&gt;
    # @param token Authentication credential
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def orders_dispatch_notes_bulk_with_http_info(token, payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrdersApi.orders_dispatch_notes_bulk ..."
      end
      # verify the required parameter 'token' is set
      if @api_client.config.client_side_validation && token.nil?
        fail ArgumentError, "Missing the required parameter 'token' when calling OrdersApi.orders_dispatch_notes_bulk"
      end
      # verify the required parameter 'payload' is set
      if @api_client.config.client_side_validation && payload.nil?
        fail ArgumentError, "Missing the required parameter 'payload' when calling OrdersApi.orders_dispatch_notes_bulk"
      end
      # resource path
      local_var_path = "/api/v1/orders/dispatch_notes"

      # query parameters
      query_params = {}
      query_params[:'token'] = token

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/pdf', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(payload)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#orders_dispatch_notes_bulk\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Dispatch an order
    # Dispatches an order that is in an accepted state and has also had its dispatch note printed
    # @param token Authentication credential
    # @param id Order id
    # @param estimated_delivery_date &#39;yyyy-mm-dd&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :resolve_enquiry 
    # @option opts [String] :tracking_number 
    # @option opts [String] :parcel_tracking_url 
    # @option opts [BOOLEAN] :ignore_unresolved_enquiries Defaults to false
    # @return [nil]
    def orders_dispatch_order(token, id, estimated_delivery_date, opts = {})
      orders_dispatch_order_with_http_info(token, id, estimated_delivery_date, opts)
      return nil
    end

    # Dispatch an order
    # Dispatches an order that is in an accepted state and has also had its dispatch note printed
    # @param token Authentication credential
    # @param id Order id
    # @param estimated_delivery_date &#39;yyyy-mm-dd&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :resolve_enquiry 
    # @option opts [String] :tracking_number 
    # @option opts [String] :parcel_tracking_url 
    # @option opts [BOOLEAN] :ignore_unresolved_enquiries Defaults to false
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def orders_dispatch_order_with_http_info(token, id, estimated_delivery_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrdersApi.orders_dispatch_order ..."
      end
      # verify the required parameter 'token' is set
      if @api_client.config.client_side_validation && token.nil?
        fail ArgumentError, "Missing the required parameter 'token' when calling OrdersApi.orders_dispatch_order"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrdersApi.orders_dispatch_order"
      end
      # verify the required parameter 'estimated_delivery_date' is set
      if @api_client.config.client_side_validation && estimated_delivery_date.nil?
        fail ArgumentError, "Missing the required parameter 'estimated_delivery_date' when calling OrdersApi.orders_dispatch_order"
      end
      # resource path
      local_var_path = "/api/v1/orders/{id}/dispatch".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'token'] = token

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}
      form_params["estimated_delivery_date"] = estimated_delivery_date
      form_params["resolve_enquiry"] = opts[:'resolve_enquiry'] if !opts[:'resolve_enquiry'].nil?
      form_params["tracking_number"] = opts[:'tracking_number'] if !opts[:'tracking_number'].nil?
      form_params["parcel_tracking_url"] = opts[:'parcel_tracking_url'] if !opts[:'parcel_tracking_url'].nil?
      form_params["ignore_unresolved_enquiries"] = opts[:'ignore_unresolved_enquiries'] if !opts[:'ignore_unresolved_enquiries'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#orders_dispatch_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Dispatch multiple orders
    # Returns an array of hashes containing order ids and status codes. A status code of 200       indicates a successful update whereas a code of 400 indicates failure.     Example response:     <pre>     [       {         \"id\": 12,         \"status\": 200,         \"errors\": []       },       {         \"id\": 22,         \"status\": 404,         \"errors\": [           {             \"code\": \"RESOURCE_NOT_FOUND\",             \"title\": \"Couldn't find the requested resource\"           }         ]       }     ]     </pre> 
    # @param token Authentication credential
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :ignore_unresolved_enquiries Defaults to false
    # @return [nil]
    def orders_dispatch_orders_bulk(token, payload, opts = {})
      orders_dispatch_orders_bulk_with_http_info(token, payload, opts)
      return nil
    end

    # Dispatch multiple orders
    # Returns an array of hashes containing order ids and status codes. A status code of 200       indicates a successful update whereas a code of 400 indicates failure.     Example response:     &lt;pre&gt;     [       {         \&quot;id\&quot;: 12,         \&quot;status\&quot;: 200,         \&quot;errors\&quot;: []       },       {         \&quot;id\&quot;: 22,         \&quot;status\&quot;: 404,         \&quot;errors\&quot;: [           {             \&quot;code\&quot;: \&quot;RESOURCE_NOT_FOUND\&quot;,             \&quot;title\&quot;: \&quot;Couldn&#39;t find the requested resource\&quot;           }         ]       }     ]     &lt;/pre&gt; 
    # @param token Authentication credential
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :ignore_unresolved_enquiries Defaults to false
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def orders_dispatch_orders_bulk_with_http_info(token, payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrdersApi.orders_dispatch_orders_bulk ..."
      end
      # verify the required parameter 'token' is set
      if @api_client.config.client_side_validation && token.nil?
        fail ArgumentError, "Missing the required parameter 'token' when calling OrdersApi.orders_dispatch_orders_bulk"
      end
      # verify the required parameter 'payload' is set
      if @api_client.config.client_side_validation && payload.nil?
        fail ArgumentError, "Missing the required parameter 'payload' when calling OrdersApi.orders_dispatch_orders_bulk"
      end
      # resource path
      local_var_path = "/api/v1/orders/dispatch"

      # query parameters
      query_params = {}
      query_params[:'token'] = token
      query_params[:'ignore_unresolved_enquiries'] = opts[:'ignore_unresolved_enquiries'] if !opts[:'ignore_unresolved_enquiries'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(payload)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#orders_dispatch_orders_bulk\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Fetch orders
    # Lists orders descending by placed at time by default.<p/>If you just want a count, use per_page=0 and offset=0 .
    # @param token Authentication credential
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :customer_expected_delivery_date_from Earliest customer_expected_delivery_date datetime - format iso8601 eg &#39;2011-10-05T22:26:12-04:00&#39;
    # @option opts [DateTime] :customer_expected_delivery_date_to Latest customer_expected_delivery_date datetime - format iso8601 eg &#39;2011-10-05T22:26:12-04:00&#39;
    # @option opts [String] :delivery_service_code Delivery service code
    # @option opts [String] :delivery_zone_ids List of delivery zone ids
    # @option opts [String] :dir Direction (defaults to desc)
    # @option opts [BOOLEAN] :dispatch_note_viewed 
    # @option opts [String] :enquiry_state           Enquiry state where &#x60;unresolved&#x60; includes &#x60;opened&#x60;, &#x60;acknowledged&#x60; and &#x60;overdue&#x60; 
    # @option opts [DateTime] :estimated_delivery_date_from Earliest estimated_delivery_date datetime - format iso8601 eg &#39;2011-10-05T22:26:12-04:00&#39;
    # @option opts [DateTime] :estimated_delivery_date_to Latest estimated_delivery_date datetime - format iso8601 eg &#39;2011-10-05T22:26:12-04:00&#39;
    # @option opts [DateTime] :estimated_dispatch_at_from Earliest estimated_dispatch_at datetime - format iso8601 eg &#39;2011-10-05T22:26:12-04:00&#39;
    # @option opts [DateTime] :estimated_dispatch_at_to Latest estimated_dispatch_at datetime - format iso8601 eg &#39;2011-10-05T22:26:12-04:00&#39;
    # @option opts [DateTime] :updated_at_from Earliest updated_at datetime - format iso8601 eg &#39;2011-10-05T22:26:12-04:00&#39;. Is not changed on nested resource updates eg &#39;Enquiry&#39;
    # @option opts [DateTime] :updated_at_to Latest updated_at datetime - format iso8601 eg &#39;2011-10-05T22:26:12-04:00&#39;. Is not changed on nested resource updates eg &#39;Enquiry&#39;
    # @option opts [BOOLEAN] :gift 
    # @option opts [BOOLEAN] :unresolved_enquiry 
    # @option opts [String] :ids List of order ids
    # @option opts [Integer] :offset 
    # @option opts [Integer] :per_page Defaults to 30, maximum is 250
    # @option opts [String] :product_ids List of product ids
    # @option opts [String] :query Matches your query to information related to your orders
    # @option opts [BOOLEAN] :repeat_customer 
    # @option opts [String] :sort Defaults to placed_at
    # @option opts [Array<String>] :state State
    # @return [OrderIndex]
    def orders_index(token, opts = {})
      data, _status_code, _headers = orders_index_with_http_info(token, opts)
      return data
    end

    # Fetch orders
    # Lists orders descending by placed at time by default.&lt;p/&gt;If you just want a count, use per_page&#x3D;0 and offset&#x3D;0 .
    # @param token Authentication credential
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :customer_expected_delivery_date_from Earliest customer_expected_delivery_date datetime - format iso8601 eg &#39;2011-10-05T22:26:12-04:00&#39;
    # @option opts [DateTime] :customer_expected_delivery_date_to Latest customer_expected_delivery_date datetime - format iso8601 eg &#39;2011-10-05T22:26:12-04:00&#39;
    # @option opts [String] :delivery_service_code Delivery service code
    # @option opts [String] :delivery_zone_ids List of delivery zone ids
    # @option opts [String] :dir Direction (defaults to desc)
    # @option opts [BOOLEAN] :dispatch_note_viewed 
    # @option opts [String] :enquiry_state           Enquiry state where &#x60;unresolved&#x60; includes &#x60;opened&#x60;, &#x60;acknowledged&#x60; and &#x60;overdue&#x60; 
    # @option opts [DateTime] :estimated_delivery_date_from Earliest estimated_delivery_date datetime - format iso8601 eg &#39;2011-10-05T22:26:12-04:00&#39;
    # @option opts [DateTime] :estimated_delivery_date_to Latest estimated_delivery_date datetime - format iso8601 eg &#39;2011-10-05T22:26:12-04:00&#39;
    # @option opts [DateTime] :estimated_dispatch_at_from Earliest estimated_dispatch_at datetime - format iso8601 eg &#39;2011-10-05T22:26:12-04:00&#39;
    # @option opts [DateTime] :estimated_dispatch_at_to Latest estimated_dispatch_at datetime - format iso8601 eg &#39;2011-10-05T22:26:12-04:00&#39;
    # @option opts [DateTime] :updated_at_from Earliest updated_at datetime - format iso8601 eg &#39;2011-10-05T22:26:12-04:00&#39;. Is not changed on nested resource updates eg &#39;Enquiry&#39;
    # @option opts [DateTime] :updated_at_to Latest updated_at datetime - format iso8601 eg &#39;2011-10-05T22:26:12-04:00&#39;. Is not changed on nested resource updates eg &#39;Enquiry&#39;
    # @option opts [BOOLEAN] :gift 
    # @option opts [BOOLEAN] :unresolved_enquiry 
    # @option opts [String] :ids List of order ids
    # @option opts [Integer] :offset 
    # @option opts [Integer] :per_page Defaults to 30, maximum is 250
    # @option opts [String] :product_ids List of product ids
    # @option opts [String] :query Matches your query to information related to your orders
    # @option opts [BOOLEAN] :repeat_customer 
    # @option opts [String] :sort Defaults to placed_at
    # @option opts [Array<String>] :state State
    # @return [Array<(OrderIndex, Fixnum, Hash)>] OrderIndex data, response status code and response headers
    def orders_index_with_http_info(token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrdersApi.orders_index ..."
      end
      # verify the required parameter 'token' is set
      if @api_client.config.client_side_validation && token.nil?
        fail ArgumentError, "Missing the required parameter 'token' when calling OrdersApi.orders_index"
      end
      if @api_client.config.client_side_validation && opts[:'delivery_service_code'] && !['EXPRESS_12', 'EXPRESS_24', 'EXPRESS_48', 'FREE', 'SATURDAY', 'STANDARD', 'STANDARD_COURIER'].include?(opts[:'delivery_service_code'])
        fail ArgumentError, 'invalid value for "delivery_service_code", must be one of EXPRESS_12, EXPRESS_24, EXPRESS_48, FREE, SATURDAY, STANDARD, STANDARD_COURIER'
      end
      if @api_client.config.client_side_validation && opts[:'dir'] && !['asc', 'desc'].include?(opts[:'dir'])
        fail ArgumentError, 'invalid value for "dir", must be one of asc, desc'
      end
      if @api_client.config.client_side_validation && opts[:'enquiry_state'] && !['opened', 'acknowledged', 'overdue', 'resolved', 'unresolved'].include?(opts[:'enquiry_state'])
        fail ArgumentError, 'invalid value for "enquiry_state", must be one of opened, acknowledged, overdue, resolved, unresolved'
      end
      if @api_client.config.client_side_validation && opts[:'sort'] && !['accepted_at', 'confirm_by', 'customer_email', 'customer_expected_delivery_date', 'customer_name', 'declined_at', 'delivery_recipient_name', 'delivery_service_code', 'dispatch_note_viewed', 'dispatched_at', 'enquiry_state', 'estimated_delivery_date', 'estimated_dispatch_at', 'expired_at', 'gift', 'international', 'listing_total_gross_value', 'partner_name', 'partner_shortcode', 'placed_at', 'state'].include?(opts[:'sort'])
        fail ArgumentError, 'invalid value for "sort", must be one of accepted_at, confirm_by, customer_email, customer_expected_delivery_date, customer_name, declined_at, delivery_recipient_name, delivery_service_code, dispatch_note_viewed, dispatched_at, enquiry_state, estimated_delivery_date, estimated_dispatch_at, expired_at, gift, international, listing_total_gross_value, partner_name, partner_shortcode, placed_at, state'
      end
      # resource path
      local_var_path = "/api/v1/orders"

      # query parameters
      query_params = {}
      query_params[:'token'] = token
      query_params[:'customer_expected_delivery_date[from]'] = opts[:'customer_expected_delivery_date_from'] if !opts[:'customer_expected_delivery_date_from'].nil?
      query_params[:'customer_expected_delivery_date[to]'] = opts[:'customer_expected_delivery_date_to'] if !opts[:'customer_expected_delivery_date_to'].nil?
      query_params[:'delivery_service_code'] = opts[:'delivery_service_code'] if !opts[:'delivery_service_code'].nil?
      query_params[:'delivery_zone_ids'] = opts[:'delivery_zone_ids'] if !opts[:'delivery_zone_ids'].nil?
      query_params[:'dir'] = opts[:'dir'] if !opts[:'dir'].nil?
      query_params[:'dispatch_note_viewed'] = opts[:'dispatch_note_viewed'] if !opts[:'dispatch_note_viewed'].nil?
      query_params[:'enquiry_state'] = opts[:'enquiry_state'] if !opts[:'enquiry_state'].nil?
      query_params[:'estimated_delivery_date[from]'] = opts[:'estimated_delivery_date_from'] if !opts[:'estimated_delivery_date_from'].nil?
      query_params[:'estimated_delivery_date[to]'] = opts[:'estimated_delivery_date_to'] if !opts[:'estimated_delivery_date_to'].nil?
      query_params[:'estimated_dispatch_at[from]'] = opts[:'estimated_dispatch_at_from'] if !opts[:'estimated_dispatch_at_from'].nil?
      query_params[:'estimated_dispatch_at[to]'] = opts[:'estimated_dispatch_at_to'] if !opts[:'estimated_dispatch_at_to'].nil?
      query_params[:'updated_at[from]'] = opts[:'updated_at_from'] if !opts[:'updated_at_from'].nil?
      query_params[:'updated_at[to]'] = opts[:'updated_at_to'] if !opts[:'updated_at_to'].nil?
      query_params[:'gift'] = opts[:'gift'] if !opts[:'gift'].nil?
      query_params[:'unresolved_enquiry'] = opts[:'unresolved_enquiry'] if !opts[:'unresolved_enquiry'].nil?
      query_params[:'ids'] = opts[:'ids'] if !opts[:'ids'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'product_ids'] = opts[:'product_ids'] if !opts[:'product_ids'].nil?
      query_params[:'query'] = opts[:'query'] if !opts[:'query'].nil?
      query_params[:'repeat_customer'] = opts[:'repeat_customer'] if !opts[:'repeat_customer'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'state'] = @api_client.build_collection_param(opts[:'state'], :csv) if !opts[:'state'].nil?

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OrderIndex')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#orders_index\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate a vat invoice pdf.
    # <p>Invoices are currently only applicable for the UK site</p>Here is an example of how to obtain a pdf using curl:       <pre>curl -XPOST [URL] > document.pdf</pre>
    # @param token Authentication credential
    # @param id Order id
    # @param type Type of invoice
    # @param [Hash] opts the optional parameters
    # @return [File]
    def orders_invoice(token, id, type, opts = {})
      data, _status_code, _headers = orders_invoice_with_http_info(token, id, type, opts)
      return data
    end

    # Generate a vat invoice pdf.
    # &lt;p&gt;Invoices are currently only applicable for the UK site&lt;/p&gt;Here is an example of how to obtain a pdf using curl:       &lt;pre&gt;curl -XPOST [URL] &gt; document.pdf&lt;/pre&gt;
    # @param token Authentication credential
    # @param id Order id
    # @param type Type of invoice
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def orders_invoice_with_http_info(token, id, type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrdersApi.orders_invoice ..."
      end
      # verify the required parameter 'token' is set
      if @api_client.config.client_side_validation && token.nil?
        fail ArgumentError, "Missing the required parameter 'token' when calling OrdersApi.orders_invoice"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrdersApi.orders_invoice"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling OrdersApi.orders_invoice"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['vat_invoice', 'additional_payment'].include?(type)
        fail ArgumentError, "invalid value for 'type', must be one of vat_invoice, additional_payment"
      end
      # resource path
      local_var_path = "/api/v1/orders/{id}/invoice".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'token'] = token
      query_params[:'type'] = type

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/pdf', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#orders_invoice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate an order details pdf
    # Here is an example of how to obtain a pdf using curl:       <pre>curl -XPOST [URL] > document.pdf</pre>
    # @param token Authentication credential
    # @param id Order id
    # @param [Hash] opts the optional parameters
    # @return [File]
    def orders_order_details(token, id, opts = {})
      data, _status_code, _headers = orders_order_details_with_http_info(token, id, opts)
      return data
    end

    # Generate an order details pdf
    # Here is an example of how to obtain a pdf using curl:       &lt;pre&gt;curl -XPOST [URL] &gt; document.pdf&lt;/pre&gt;
    # @param token Authentication credential
    # @param id Order id
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def orders_order_details_with_http_info(token, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrdersApi.orders_order_details ..."
      end
      # verify the required parameter 'token' is set
      if @api_client.config.client_side_validation && token.nil?
        fail ArgumentError, "Missing the required parameter 'token' when calling OrdersApi.orders_order_details"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrdersApi.orders_order_details"
      end
      # resource path
      local_var_path = "/api/v1/orders/{id}/order_details".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'token'] = token

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/pdf', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#orders_order_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate pdf with order details for each order
    # <p/> Here is an example of how to obtain a pdf using curl:       <pre>curl -H \"Content-Type: application/json\" -d '[{\"id\": 123}, {\"id\": 456}]' -XPOST [URL] > document.pdf</pre><p/>       Ensure that the Content-Type header is set to \"Content-Type: application/json\".<p/>
    # @param token Authentication credential
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @return [File]
    def orders_order_details_bulk(token, payload, opts = {})
      data, _status_code, _headers = orders_order_details_bulk_with_http_info(token, payload, opts)
      return data
    end

    # Generate pdf with order details for each order
    # &lt;p/&gt; Here is an example of how to obtain a pdf using curl:       &lt;pre&gt;curl -H \&quot;Content-Type: application/json\&quot; -d &#39;[{\&quot;id\&quot;: 123}, {\&quot;id\&quot;: 456}]&#39; -XPOST [URL] &gt; document.pdf&lt;/pre&gt;&lt;p/&gt;       Ensure that the Content-Type header is set to \&quot;Content-Type: application/json\&quot;.&lt;p/&gt;
    # @param token Authentication credential
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def orders_order_details_bulk_with_http_info(token, payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrdersApi.orders_order_details_bulk ..."
      end
      # verify the required parameter 'token' is set
      if @api_client.config.client_side_validation && token.nil?
        fail ArgumentError, "Missing the required parameter 'token' when calling OrdersApi.orders_order_details_bulk"
      end
      # verify the required parameter 'payload' is set
      if @api_client.config.client_side_validation && payload.nil?
        fail ArgumentError, "Missing the required parameter 'payload' when calling OrdersApi.orders_order_details_bulk"
      end
      # resource path
      local_var_path = "/api/v1/orders/order_details"

      # query parameters
      query_params = {}
      query_params[:'token'] = token

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/pdf', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(payload)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#orders_order_details_bulk\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Fetch a single Order
    # 
    # @param token Authentication credential
    # @param id Order Id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include         Comma separated list of nodes to expand. Currently the available values are:         &lt;br /&gt;&lt;b style&#x3D;\&quot;margin-left: 10px\&quot;&gt;financials&lt;/b&gt;         &lt;p style&#x3D;\&quot;margin-left: 20px\&quot;&gt;           Additional financial data about this order, eg: commission and discount amounts.         &lt;/p&gt; 
    # @return [Order]
    def orders_show(token, id, opts = {})
      data, _status_code, _headers = orders_show_with_http_info(token, id, opts)
      return data
    end

    # Fetch a single Order
    # 
    # @param token Authentication credential
    # @param id Order Id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include         Comma separated list of nodes to expand. Currently the available values are:         &lt;br /&gt;&lt;b style&#x3D;\&quot;margin-left: 10px\&quot;&gt;financials&lt;/b&gt;         &lt;p style&#x3D;\&quot;margin-left: 20px\&quot;&gt;           Additional financial data about this order, eg: commission and discount amounts.         &lt;/p&gt; 
    # @return [Array<(Order, Fixnum, Hash)>] Order data, response status code and response headers
    def orders_show_with_http_info(token, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrdersApi.orders_show ..."
      end
      # verify the required parameter 'token' is set
      if @api_client.config.client_side_validation && token.nil?
        fail ArgumentError, "Missing the required parameter 'token' when calling OrdersApi.orders_show"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrdersApi.orders_show"
      end
      # resource path
      local_var_path = "/api/v1/orders/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'token'] = token
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Order')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#orders_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
