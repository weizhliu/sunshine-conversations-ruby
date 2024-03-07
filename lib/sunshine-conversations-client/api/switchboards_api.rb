=begin
#Sunshine Conversations API

The version of the OpenAPI document: 12.3.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

require 'cgi'

module SunshineConversationsClient
  class SwitchboardsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Switchboard
    # Create a switchboard.
    # @param app_id [String] Identifies the app.
    # @param [Hash] opts the optional parameters
    # @return [SwitchboardResponse]
    def create_switchboard(app_id, opts = {})
      data, _status_code, _headers = create_switchboard_with_http_info(app_id, opts)
      data
    end

    # Create Switchboard
    # Create a switchboard.
    # @param app_id [String] Identifies the app.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SwitchboardResponse, Integer, Hash)>] SwitchboardResponse data, response status code and response headers
    def create_switchboard_with_http_info(app_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SwitchboardsApi.create_switchboard ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling SwitchboardsApi.create_switchboard"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/switchboards'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

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
      return_type = opts[:return_type] || 'SwitchboardResponse' 

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
        @api_client.config.logger.debug "API called: SwitchboardsApi#create_switchboard\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Switchboard
    # Deletes the switchboard and all its switchboard integrations. The integrations linked to these switchboard integrations are not deleted and will start receiving all conversation events.
    # @param app_id [String] Identifies the app.
    # @param switchboard_id [String] Identifies the switchboard.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def delete_switchboard(app_id, switchboard_id, opts = {})
      data, _status_code, _headers = delete_switchboard_with_http_info(app_id, switchboard_id, opts)
      data
    end

    # Delete Switchboard
    # Deletes the switchboard and all its switchboard integrations. The integrations linked to these switchboard integrations are not deleted and will start receiving all conversation events.
    # @param app_id [String] Identifies the app.
    # @param switchboard_id [String] Identifies the switchboard.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def delete_switchboard_with_http_info(app_id, switchboard_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SwitchboardsApi.delete_switchboard ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling SwitchboardsApi.delete_switchboard"
      end
      # verify the required parameter 'switchboard_id' is set
      if @api_client.config.client_side_validation && switchboard_id.nil?
        fail ArgumentError, "Missing the required parameter 'switchboard_id' when calling SwitchboardsApi.delete_switchboard"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/switchboards/{switchboardId}'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'switchboardId' + '}', CGI.escape(switchboard_id.to_s))

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
        @api_client.config.logger.debug "API called: SwitchboardsApi#delete_switchboard\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Switchboards
    # Lists all switchboards belonging to the app. 
    # @param app_id [String] Identifies the app.
    # @param [Hash] opts the optional parameters
    # @return [SwitchboardListResponse]
    def list_switchboards(app_id, opts = {})
      data, _status_code, _headers = list_switchboards_with_http_info(app_id, opts)
      data
    end

    # List Switchboards
    # Lists all switchboards belonging to the app. 
    # @param app_id [String] Identifies the app.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SwitchboardListResponse, Integer, Hash)>] SwitchboardListResponse data, response status code and response headers
    def list_switchboards_with_http_info(app_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SwitchboardsApi.list_switchboards ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling SwitchboardsApi.list_switchboards"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/switchboards'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

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
      return_type = opts[:return_type] || 'SwitchboardListResponse' 

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
        @api_client.config.logger.debug "API called: SwitchboardsApi#list_switchboards\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Switchboard
    # Updates a switchboard record.
    # @param app_id [String] Identifies the app.
    # @param switchboard_id [String] Identifies the switchboard.
    # @param switchboard_update_body [SwitchboardUpdateBody] 
    # @param [Hash] opts the optional parameters
    # @return [SwitchboardResponse]
    def update_switchboard(app_id, switchboard_id, switchboard_update_body, opts = {})
      data, _status_code, _headers = update_switchboard_with_http_info(app_id, switchboard_id, switchboard_update_body, opts)
      data
    end

    # Update Switchboard
    # Updates a switchboard record.
    # @param app_id [String] Identifies the app.
    # @param switchboard_id [String] Identifies the switchboard.
    # @param switchboard_update_body [SwitchboardUpdateBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SwitchboardResponse, Integer, Hash)>] SwitchboardResponse data, response status code and response headers
    def update_switchboard_with_http_info(app_id, switchboard_id, switchboard_update_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SwitchboardsApi.update_switchboard ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling SwitchboardsApi.update_switchboard"
      end
      # verify the required parameter 'switchboard_id' is set
      if @api_client.config.client_side_validation && switchboard_id.nil?
        fail ArgumentError, "Missing the required parameter 'switchboard_id' when calling SwitchboardsApi.update_switchboard"
      end
      # verify the required parameter 'switchboard_update_body' is set
      if @api_client.config.client_side_validation && switchboard_update_body.nil?
        fail ArgumentError, "Missing the required parameter 'switchboard_update_body' when calling SwitchboardsApi.update_switchboard"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/switchboards/{switchboardId}'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'switchboardId' + '}', CGI.escape(switchboard_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(switchboard_update_body) 

      # return_type
      return_type = opts[:return_type] || 'SwitchboardResponse' 

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
        @api_client.config.logger.debug "API called: SwitchboardsApi#update_switchboard\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
