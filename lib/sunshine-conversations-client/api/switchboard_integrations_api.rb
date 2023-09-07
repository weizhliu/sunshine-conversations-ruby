=begin
#Sunshine Conversations API

The version of the OpenAPI document: 9.15.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

require 'cgi'

module SunshineConversationsClient
  class SwitchboardIntegrationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Switchboard Integration
    # Create a switchboard integration.
    # @param app_id [String] Identifies the app.
    # @param switchboard_id [String] Identifies the switchboard.
    # @param switchboard_integration_create_body [SwitchboardIntegrationCreateBody] 
    # @param [Hash] opts the optional parameters
    # @return [SwitchboardIntegrationResponse]
    def create_switchboard_integration(app_id, switchboard_id, switchboard_integration_create_body, opts = {})
      data, _status_code, _headers = create_switchboard_integration_with_http_info(app_id, switchboard_id, switchboard_integration_create_body, opts)
      data
    end

    # Create Switchboard Integration
    # Create a switchboard integration.
    # @param app_id [String] Identifies the app.
    # @param switchboard_id [String] Identifies the switchboard.
    # @param switchboard_integration_create_body [SwitchboardIntegrationCreateBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SwitchboardIntegrationResponse, Integer, Hash)>] SwitchboardIntegrationResponse data, response status code and response headers
    def create_switchboard_integration_with_http_info(app_id, switchboard_id, switchboard_integration_create_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SwitchboardIntegrationsApi.create_switchboard_integration ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling SwitchboardIntegrationsApi.create_switchboard_integration"
      end
      # verify the required parameter 'switchboard_id' is set
      if @api_client.config.client_side_validation && switchboard_id.nil?
        fail ArgumentError, "Missing the required parameter 'switchboard_id' when calling SwitchboardIntegrationsApi.create_switchboard_integration"
      end
      # verify the required parameter 'switchboard_integration_create_body' is set
      if @api_client.config.client_side_validation && switchboard_integration_create_body.nil?
        fail ArgumentError, "Missing the required parameter 'switchboard_integration_create_body' when calling SwitchboardIntegrationsApi.create_switchboard_integration"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/switchboards/{switchboardId}/switchboardIntegrations'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'switchboardId' + '}', CGI.escape(switchboard_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(switchboard_integration_create_body) 

      # return_type
      return_type = opts[:return_type] || 'SwitchboardIntegrationResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['basicAuth', 'bearerAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SwitchboardIntegrationsApi#create_switchboard_integration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Switchboard Integration
    # Deletes the switchboard integration. If the deleted switchboard integration had an active status for some conversations, the default switchboard integration will replace it. Note that it is forbidden to delete a switchboard integration if it's the default one (a new one must be chosen first) or if another switchboard integration's `nextSwitchboardIntegrationId` refers to it. The integration that was linked to the deleted switchboard integration will start receiving all conversation events, regardless of the switchboard status.
    # @param app_id [String] Identifies the app.
    # @param switchboard_id [String] Identifies the switchboard.
    # @param switchboard_integration_id [String] Identifies the switchboard integration.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def delete_switchboard_integration(app_id, switchboard_id, switchboard_integration_id, opts = {})
      data, _status_code, _headers = delete_switchboard_integration_with_http_info(app_id, switchboard_id, switchboard_integration_id, opts)
      data
    end

    # Delete Switchboard Integration
    # Deletes the switchboard integration. If the deleted switchboard integration had an active status for some conversations, the default switchboard integration will replace it. Note that it is forbidden to delete a switchboard integration if it&#39;s the default one (a new one must be chosen first) or if another switchboard integration&#39;s &#x60;nextSwitchboardIntegrationId&#x60; refers to it. The integration that was linked to the deleted switchboard integration will start receiving all conversation events, regardless of the switchboard status.
    # @param app_id [String] Identifies the app.
    # @param switchboard_id [String] Identifies the switchboard.
    # @param switchboard_integration_id [String] Identifies the switchboard integration.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def delete_switchboard_integration_with_http_info(app_id, switchboard_id, switchboard_integration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SwitchboardIntegrationsApi.delete_switchboard_integration ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling SwitchboardIntegrationsApi.delete_switchboard_integration"
      end
      # verify the required parameter 'switchboard_id' is set
      if @api_client.config.client_side_validation && switchboard_id.nil?
        fail ArgumentError, "Missing the required parameter 'switchboard_id' when calling SwitchboardIntegrationsApi.delete_switchboard_integration"
      end
      # verify the required parameter 'switchboard_integration_id' is set
      if @api_client.config.client_side_validation && switchboard_integration_id.nil?
        fail ArgumentError, "Missing the required parameter 'switchboard_integration_id' when calling SwitchboardIntegrationsApi.delete_switchboard_integration"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/switchboards/{switchboardId}/switchboardIntegrations/{switchboardIntegrationId}'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'switchboardId' + '}', CGI.escape(switchboard_id.to_s)).sub('{' + 'switchboardIntegrationId' + '}', CGI.escape(switchboard_integration_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Object' 

      # auth_names
      auth_names = opts[:auth_names] || ['basicAuth', 'bearerAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SwitchboardIntegrationsApi#delete_switchboard_integration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Switchboard Integrations
    # Lists all switchboard integrations linked to the switchboard. 
    # @param app_id [String] Identifies the app.
    # @param switchboard_id [String] Identifies the switchboard.
    # @param [Hash] opts the optional parameters
    # @return [SwitchboardIntegrationListResponse]
    def list_switchboard_integrations(app_id, switchboard_id, opts = {})
      data, _status_code, _headers = list_switchboard_integrations_with_http_info(app_id, switchboard_id, opts)
      data
    end

    # List Switchboard Integrations
    # Lists all switchboard integrations linked to the switchboard. 
    # @param app_id [String] Identifies the app.
    # @param switchboard_id [String] Identifies the switchboard.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SwitchboardIntegrationListResponse, Integer, Hash)>] SwitchboardIntegrationListResponse data, response status code and response headers
    def list_switchboard_integrations_with_http_info(app_id, switchboard_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SwitchboardIntegrationsApi.list_switchboard_integrations ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling SwitchboardIntegrationsApi.list_switchboard_integrations"
      end
      # verify the required parameter 'switchboard_id' is set
      if @api_client.config.client_side_validation && switchboard_id.nil?
        fail ArgumentError, "Missing the required parameter 'switchboard_id' when calling SwitchboardIntegrationsApi.list_switchboard_integrations"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/switchboards/{switchboardId}/switchboardIntegrations'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'switchboardId' + '}', CGI.escape(switchboard_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'SwitchboardIntegrationListResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['basicAuth', 'bearerAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SwitchboardIntegrationsApi#list_switchboard_integrations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Switchboard Integration
    # Updates a switchboard integration record.
    # @param app_id [String] Identifies the app.
    # @param switchboard_id [String] Identifies the switchboard.
    # @param switchboard_integration_id [String] Identifies the switchboard integration.
    # @param switchboard_integration_update_body [SwitchboardIntegrationUpdateBody] 
    # @param [Hash] opts the optional parameters
    # @return [SwitchboardIntegrationResponse]
    def update_switchboard_integration(app_id, switchboard_id, switchboard_integration_id, switchboard_integration_update_body, opts = {})
      data, _status_code, _headers = update_switchboard_integration_with_http_info(app_id, switchboard_id, switchboard_integration_id, switchboard_integration_update_body, opts)
      data
    end

    # Update Switchboard Integration
    # Updates a switchboard integration record.
    # @param app_id [String] Identifies the app.
    # @param switchboard_id [String] Identifies the switchboard.
    # @param switchboard_integration_id [String] Identifies the switchboard integration.
    # @param switchboard_integration_update_body [SwitchboardIntegrationUpdateBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SwitchboardIntegrationResponse, Integer, Hash)>] SwitchboardIntegrationResponse data, response status code and response headers
    def update_switchboard_integration_with_http_info(app_id, switchboard_id, switchboard_integration_id, switchboard_integration_update_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SwitchboardIntegrationsApi.update_switchboard_integration ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling SwitchboardIntegrationsApi.update_switchboard_integration"
      end
      # verify the required parameter 'switchboard_id' is set
      if @api_client.config.client_side_validation && switchboard_id.nil?
        fail ArgumentError, "Missing the required parameter 'switchboard_id' when calling SwitchboardIntegrationsApi.update_switchboard_integration"
      end
      # verify the required parameter 'switchboard_integration_id' is set
      if @api_client.config.client_side_validation && switchboard_integration_id.nil?
        fail ArgumentError, "Missing the required parameter 'switchboard_integration_id' when calling SwitchboardIntegrationsApi.update_switchboard_integration"
      end
      # verify the required parameter 'switchboard_integration_update_body' is set
      if @api_client.config.client_side_validation && switchboard_integration_update_body.nil?
        fail ArgumentError, "Missing the required parameter 'switchboard_integration_update_body' when calling SwitchboardIntegrationsApi.update_switchboard_integration"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/switchboards/{switchboardId}/switchboardIntegrations/{switchboardIntegrationId}'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'switchboardId' + '}', CGI.escape(switchboard_id.to_s)).sub('{' + 'switchboardIntegrationId' + '}', CGI.escape(switchboard_integration_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(switchboard_integration_update_body) 

      # return_type
      return_type = opts[:return_type] || 'SwitchboardIntegrationResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['basicAuth', 'bearerAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SwitchboardIntegrationsApi#update_switchboard_integration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
