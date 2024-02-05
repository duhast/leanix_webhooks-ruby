=begin
#Webhooks

#Sends notifications on trigger events to subscribed observers

The version of the OpenAPI document: 2.0.119-SNAPSHOT

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

require 'cgi'

module LeanixWebhooksApi
  class SubscriptionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # createSubscription
    # Endpoint to create a subscription.
    # @param subscription [Subscription] the subscription to create
    # @param [Hash] opts the optional parameters
    # @return [SubscriptionResponse]
    def create_subscription(subscription, opts = {})
      data, _status_code, _headers = create_subscription_with_http_info(subscription, opts)
      data
    end

    # createSubscription
    # Endpoint to create a subscription.
    # @param subscription [Subscription] the subscription to create
    # @param [Hash] opts the optional parameters
    # @return [Array<(SubscriptionResponse, Integer, Hash)>] SubscriptionResponse data, response status code and response headers
    def create_subscription_with_http_info(subscription, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionsApi.create_subscription ...'
      end
      # verify the required parameter 'subscription' is set
      if @api_client.config.client_side_validation && subscription.nil?
        fail ArgumentError, "Missing the required parameter 'subscription' when calling SubscriptionsApi.create_subscription"
      end
      # resource path
      local_var_path = '/subscriptions'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(subscription)

      # return_type
      return_type = opts[:debug_return_type] || 'SubscriptionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"SubscriptionsApi.create_subscription",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsApi#create_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # deleteSubscription
    # Endpoint to delete a subscription.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [SubscriptionResponse]
    def delete_subscription(id, opts = {})
      data, _status_code, _headers = delete_subscription_with_http_info(id, opts)
      data
    end

    # deleteSubscription
    # Endpoint to delete a subscription.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SubscriptionResponse, Integer, Hash)>] SubscriptionResponse data, response status code and response headers
    def delete_subscription_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionsApi.delete_subscription ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionsApi.delete_subscription"
      end
      # resource path
      local_var_path = '/subscriptions/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SubscriptionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"SubscriptionsApi.delete_subscription",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsApi#delete_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # getSubscription
    # returns a subscription with a given id
    # @param id [String] the id of the subscription
    # @param [Hash] opts the optional parameters
    # @return [SubscriptionResponse]
    def get_subscription(id, opts = {})
      data, _status_code, _headers = get_subscription_with_http_info(id, opts)
      data
    end

    # getSubscription
    # returns a subscription with a given id
    # @param id [String] the id of the subscription
    # @param [Hash] opts the optional parameters
    # @return [Array<(SubscriptionResponse, Integer, Hash)>] SubscriptionResponse data, response status code and response headers
    def get_subscription_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionsApi.get_subscription ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionsApi.get_subscription"
      end
      # resource path
      local_var_path = '/subscriptions/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SubscriptionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"SubscriptionsApi.get_subscription",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsApi#get_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # getSubscriptionDeliveries
    # Endpoint to list the deliveries
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page The page number to access (1 indexed, defaults to 1) (default to 1)
    # @option opts [Integer] :size The page size requested (defaults to 30, max 100) (default to 30)
    # @option opts [String] :sort Comma-separated list of sorting (default createdAt-DESC) (default to 'createdAt-desc')
    # @return [DeliveryListResponse]
    def get_subscription_deliveries(id, opts = {})
      data, _status_code, _headers = get_subscription_deliveries_with_http_info(id, opts)
      data
    end

    # getSubscriptionDeliveries
    # Endpoint to list the deliveries
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page The page number to access (1 indexed, defaults to 1) (default to 1)
    # @option opts [Integer] :size The page size requested (defaults to 30, max 100) (default to 30)
    # @option opts [String] :sort Comma-separated list of sorting (default createdAt-DESC) (default to 'createdAt-desc')
    # @return [Array<(DeliveryListResponse, Integer, Hash)>] DeliveryListResponse data, response status code and response headers
    def get_subscription_deliveries_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionsApi.get_subscription_deliveries ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionsApi.get_subscription_deliveries"
      end
      if @api_client.config.client_side_validation && !opts[:'size'].nil? && opts[:'size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"size"]" when calling SubscriptionsApi.get_subscription_deliveries, must be smaller than or equal to 100.'
      end

      # resource path
      local_var_path = '/subscriptions/{id}/deliveries'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DeliveryListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"SubscriptionsApi.get_subscription_deliveries",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsApi#get_subscription_deliveries\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # getSubscriptionEvents
    # Gets the next batch of events for a PULL subscription, waiting for some time if no events happen.
    # @param id [String] Id of the subscription to pull events from. Subscription must be of type PULL.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :auto_commit Should events be marked as retrieved automatically (waives at-least-once delivery guarantee). (default to false)
    # @option opts [Integer] :timeout The timeout waiting for an event to happen, in seconds (default to 10)
    # @return [PullResultResponse]
    def get_subscription_events(id, opts = {})
      data, _status_code, _headers = get_subscription_events_with_http_info(id, opts)
      data
    end

    # getSubscriptionEvents
    # Gets the next batch of events for a PULL subscription, waiting for some time if no events happen.
    # @param id [String] Id of the subscription to pull events from. Subscription must be of type PULL.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :auto_commit Should events be marked as retrieved automatically (waives at-least-once delivery guarantee). (default to false)
    # @option opts [Integer] :timeout The timeout waiting for an event to happen, in seconds (default to 10)
    # @return [Array<(PullResultResponse, Integer, Hash)>] PullResultResponse data, response status code and response headers
    def get_subscription_events_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionsApi.get_subscription_events ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionsApi.get_subscription_events"
      end
      # resource path
      local_var_path = '/subscriptions/{id}/events'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'autoCommit'] = opts[:'auto_commit'] if !opts[:'auto_commit'].nil?
      query_params[:'timeout'] = opts[:'timeout'] if !opts[:'timeout'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PullResultResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"SubscriptionsApi.get_subscription_events",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsApi#get_subscription_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # getSubscriptions
    # Endpoint to list the subscriptions.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :workspace_id an optional workspace id
    # @option opts [String] :identifier an optional subscription identifier
    # @return [SubscriptionListResponse]
    def get_subscriptions(opts = {})
      data, _status_code, _headers = get_subscriptions_with_http_info(opts)
      data
    end

    # getSubscriptions
    # Endpoint to list the subscriptions.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :workspace_id an optional workspace id
    # @option opts [String] :identifier an optional subscription identifier
    # @return [Array<(SubscriptionListResponse, Integer, Hash)>] SubscriptionListResponse data, response status code and response headers
    def get_subscriptions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionsApi.get_subscriptions ...'
      end
      # resource path
      local_var_path = '/subscriptions'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'workspaceId'] = opts[:'workspace_id'] if !opts[:'workspace_id'].nil?
      query_params[:'identifier'] = opts[:'identifier'] if !opts[:'identifier'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SubscriptionListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"SubscriptionsApi.get_subscriptions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsApi#get_subscriptions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # updateSubscription
    # Endpoint to update a subscription.
    # @param id [String] 
    # @param subscription [Subscription] the updated subscription
    # @param [Hash] opts the optional parameters
    # @return [SubscriptionResponse]
    def update_subscription(id, subscription, opts = {})
      data, _status_code, _headers = update_subscription_with_http_info(id, subscription, opts)
      data
    end

    # updateSubscription
    # Endpoint to update a subscription.
    # @param id [String] 
    # @param subscription [Subscription] the updated subscription
    # @param [Hash] opts the optional parameters
    # @return [Array<(SubscriptionResponse, Integer, Hash)>] SubscriptionResponse data, response status code and response headers
    def update_subscription_with_http_info(id, subscription, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionsApi.update_subscription ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionsApi.update_subscription"
      end
      # verify the required parameter 'subscription' is set
      if @api_client.config.client_side_validation && subscription.nil?
        fail ArgumentError, "Missing the required parameter 'subscription' when calling SubscriptionsApi.update_subscription"
      end
      # resource path
      local_var_path = '/subscriptions/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(subscription)

      # return_type
      return_type = opts[:debug_return_type] || 'SubscriptionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"SubscriptionsApi.update_subscription",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsApi#update_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # updateSubscriptionCursor
    # Marks events up to the given offset as consumed for the given subscription.
    # @param id [String] Id of the subscription to pull events from. Subscription must be of type PULL.
    # @param cursor [Cursor] the cursor where to start the next getSubscriptionEvents pull
    # @param [Hash] opts the optional parameters
    # @return [BasicResponse]
    def update_subscription_cursor(id, cursor, opts = {})
      data, _status_code, _headers = update_subscription_cursor_with_http_info(id, cursor, opts)
      data
    end

    # updateSubscriptionCursor
    # Marks events up to the given offset as consumed for the given subscription.
    # @param id [String] Id of the subscription to pull events from. Subscription must be of type PULL.
    # @param cursor [Cursor] the cursor where to start the next getSubscriptionEvents pull
    # @param [Hash] opts the optional parameters
    # @return [Array<(BasicResponse, Integer, Hash)>] BasicResponse data, response status code and response headers
    def update_subscription_cursor_with_http_info(id, cursor, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionsApi.update_subscription_cursor ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionsApi.update_subscription_cursor"
      end
      # verify the required parameter 'cursor' is set
      if @api_client.config.client_side_validation && cursor.nil?
        fail ArgumentError, "Missing the required parameter 'cursor' when calling SubscriptionsApi.update_subscription_cursor"
      end
      # resource path
      local_var_path = '/subscriptions/{id}/cursor'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(cursor)

      # return_type
      return_type = opts[:debug_return_type] || 'BasicResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"SubscriptionsApi.update_subscription_cursor",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsApi#update_subscription_cursor\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
