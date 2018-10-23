=begin
#Smooch

#The Smooch API is a unified interface for powering messaging in your customer experiences across every channel. Our API speeds access to new markets, reduces time to ship, eliminates complexity, and helps you build the best experiences for your customers. For more information, visit our [official documentation](https://docs.smooch.io).

OpenAPI spec version: 3.19

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require "uri"

module SmoochApi
  class TemplateApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Create a template for the specified app.
    # @param app_id Identifies the app.
    # @param template_create_body Body for a createTemplate request. 
    # @param [Hash] opts the optional parameters
    # @return [TemplateResponse]
    def create_template(app_id, template_create_body, opts = {})
      data, _status_code, _headers = create_template_with_http_info(app_id, template_create_body, opts)
      return data
    end

    # 
    # Create a template for the specified app.
    # @param app_id Identifies the app.
    # @param template_create_body Body for a createTemplate request. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TemplateResponse, Fixnum, Hash)>] TemplateResponse data, response status code and response headers
    def create_template_with_http_info(app_id, template_create_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TemplateApi.create_template ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling TemplateApi.create_template"
      end
      # verify the required parameter 'template_create_body' is set
      if @api_client.config.client_side_validation && template_create_body.nil?
        fail ArgumentError, "Missing the required parameter 'template_create_body' when calling TemplateApi.create_template"
      end
      # resource path
      local_var_path = "/v1/apps/{appId}/templates".sub('{' + 'appId' + '}', app_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(template_create_body)
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TemplateResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TemplateApi#create_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete the specified template.
    # @param app_id Identifies the app.
    # @param template_id Identifies the template.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_template(app_id, template_id, opts = {})
      delete_template_with_http_info(app_id, template_id, opts)
      return nil
    end

    # 
    # Delete the specified template.
    # @param app_id Identifies the app.
    # @param template_id Identifies the template.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_template_with_http_info(app_id, template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TemplateApi.delete_template ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling TemplateApi.delete_template"
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling TemplateApi.delete_template"
      end
      # resource path
      local_var_path = "/v1/apps/{appId}/templates/{templateId}".sub('{' + 'appId' + '}', app_id.to_s).sub('{' + 'templateId' + '}', template_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TemplateApi#delete_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get the specified template.
    # @param app_id Identifies the app.
    # @param template_id Identifies the template.
    # @param [Hash] opts the optional parameters
    # @return [TemplateResponse]
    def get_template(app_id, template_id, opts = {})
      data, _status_code, _headers = get_template_with_http_info(app_id, template_id, opts)
      return data
    end

    # 
    # Get the specified template.
    # @param app_id Identifies the app.
    # @param template_id Identifies the template.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TemplateResponse, Fixnum, Hash)>] TemplateResponse data, response status code and response headers
    def get_template_with_http_info(app_id, template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TemplateApi.get_template ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling TemplateApi.get_template"
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling TemplateApi.get_template"
      end
      # resource path
      local_var_path = "/v1/apps/{appId}/templates/{templateId}".sub('{' + 'appId' + '}', app_id.to_s).sub('{' + 'templateId' + '}', template_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TemplateResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TemplateApi#get_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # List templates for the specified app.
    # @param app_id Identifies the app.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of records to return. (default to 25)
    # @option opts [Integer] :offset The number of initial records to skip before picking records to return. (default to 0)
    # @return [ListTemplatesResponse]
    def list_templates(app_id, opts = {})
      data, _status_code, _headers = list_templates_with_http_info(app_id, opts)
      return data
    end

    # 
    # List templates for the specified app.
    # @param app_id Identifies the app.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of records to return.
    # @option opts [Integer] :offset The number of initial records to skip before picking records to return.
    # @return [Array<(ListTemplatesResponse, Fixnum, Hash)>] ListTemplatesResponse data, response status code and response headers
    def list_templates_with_http_info(app_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TemplateApi.list_templates ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling TemplateApi.list_templates"
      end
      # resource path
      local_var_path = "/v1/apps/{appId}/templates".sub('{' + 'appId' + '}', app_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ListTemplatesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TemplateApi#list_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update the specified template.
    # @param app_id Identifies the app.
    # @param template_id Identifies the template.
    # @param template_update_body Body for an updateTemplate request. 
    # @param [Hash] opts the optional parameters
    # @return [TemplateResponse]
    def update_template(app_id, template_id, template_update_body, opts = {})
      data, _status_code, _headers = update_template_with_http_info(app_id, template_id, template_update_body, opts)
      return data
    end

    # 
    # Update the specified template.
    # @param app_id Identifies the app.
    # @param template_id Identifies the template.
    # @param template_update_body Body for an updateTemplate request. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TemplateResponse, Fixnum, Hash)>] TemplateResponse data, response status code and response headers
    def update_template_with_http_info(app_id, template_id, template_update_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TemplateApi.update_template ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling TemplateApi.update_template"
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling TemplateApi.update_template"
      end
      # verify the required parameter 'template_update_body' is set
      if @api_client.config.client_side_validation && template_update_body.nil?
        fail ArgumentError, "Missing the required parameter 'template_update_body' when calling TemplateApi.update_template"
      end
      # resource path
      local_var_path = "/v1/apps/{appId}/templates/{templateId}".sub('{' + 'appId' + '}', app_id.to_s).sub('{' + 'templateId' + '}', template_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(template_update_body)
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TemplateResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TemplateApi#update_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
