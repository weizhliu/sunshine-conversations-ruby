=begin
#Smooch

#The Smooch API is a unified interface for powering messaging in your customer experiences across every channel. Our API speeds access to new markets, reduces time to ship, eliminates complexity, and helps you build the best experiences for your customers. For more information, visit our [official documentation](https://docs.smooch.io).

OpenAPI spec version: 3.19

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require "uri"

module SmoochApi
  class AppUserApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Delete specified app user.
    # @param app_id Identifies the app.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_app_user(app_id, user_id, opts = {})
      delete_app_user_with_http_info(app_id, user_id, opts)
      return nil
    end

    # 
    # Delete specified app user.
    # @param app_id Identifies the app.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_app_user_with_http_info(app_id, user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppUserApi.delete_app_user ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AppUserApi.delete_app_user"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AppUserApi.delete_app_user"
      end
      # resource path
      local_var_path = "/v1/apps/{appId}/appusers/{userId}".sub('{' + 'appId' + '}', app_id.to_s).sub('{' + 'userId' + '}', user_id.to_s)

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
        @api_client.config.logger.debug "API called: AppUserApi#delete_app_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete specified app user's profile.
    # @param app_id Identifies the app.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @return [AppUserResponse]
    def delete_app_user_profile(app_id, user_id, opts = {})
      data, _status_code, _headers = delete_app_user_profile_with_http_info(app_id, user_id, opts)
      return data
    end

    # 
    # Delete specified app user&#39;s profile.
    # @param app_id Identifies the app.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppUserResponse, Fixnum, Hash)>] AppUserResponse data, response status code and response headers
    def delete_app_user_profile_with_http_info(app_id, user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppUserApi.delete_app_user_profile ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AppUserApi.delete_app_user_profile"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AppUserApi.delete_app_user_profile"
      end
      # resource path
      local_var_path = "/v1/apps/{appId}/appusers/{userId}/profile".sub('{' + 'appId' + '}', app_id.to_s).sub('{' + 'userId' + '}', user_id.to_s)

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
        :auth_names => auth_names,
        :return_type => 'AppUserResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppUserApi#delete_app_user_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get the specified app user.
    # @param app_id Identifies the app.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @return [AppUserResponse]
    def get_app_user(app_id, user_id, opts = {})
      data, _status_code, _headers = get_app_user_with_http_info(app_id, user_id, opts)
      return data
    end

    # 
    # Get the specified app user.
    # @param app_id Identifies the app.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppUserResponse, Fixnum, Hash)>] AppUserResponse data, response status code and response headers
    def get_app_user_with_http_info(app_id, user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppUserApi.get_app_user ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AppUserApi.get_app_user"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AppUserApi.get_app_user"
      end
      # resource path
      local_var_path = "/v1/apps/{appId}/appusers/{userId}".sub('{' + 'appId' + '}', app_id.to_s).sub('{' + 'userId' + '}', user_id.to_s)

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
        :return_type => 'AppUserResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppUserApi#get_app_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get an auth code for facilitating a channel transfer
    # @param app_id Identifies the app.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @return [AuthCodeResponse]
    def get_app_user_auth_code(app_id, user_id, opts = {})
      data, _status_code, _headers = get_app_user_auth_code_with_http_info(app_id, user_id, opts)
      return data
    end

    # 
    # Get an auth code for facilitating a channel transfer
    # @param app_id Identifies the app.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthCodeResponse, Fixnum, Hash)>] AuthCodeResponse data, response status code and response headers
    def get_app_user_auth_code_with_http_info(app_id, user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppUserApi.get_app_user_auth_code ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AppUserApi.get_app_user_auth_code"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AppUserApi.get_app_user_auth_code"
      end
      # resource path
      local_var_path = "/v1/apps/{appId}/appusers/{userId}/authcode".sub('{' + 'appId' + '}', app_id.to_s).sub('{' + 'userId' + '}', user_id.to_s)

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
        :return_type => 'AuthCodeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppUserApi#get_app_user_auth_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get specified app user's business system IDs.
    # @param app_id Identifies the app.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @return [AppUserBusinessSystemsResponse]
    def get_app_user_business_system_ids(app_id, user_id, opts = {})
      data, _status_code, _headers = get_app_user_business_system_ids_with_http_info(app_id, user_id, opts)
      return data
    end

    # 
    # Get specified app user&#39;s business system IDs.
    # @param app_id Identifies the app.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppUserBusinessSystemsResponse, Fixnum, Hash)>] AppUserBusinessSystemsResponse data, response status code and response headers
    def get_app_user_business_system_ids_with_http_info(app_id, user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppUserApi.get_app_user_business_system_ids ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AppUserApi.get_app_user_business_system_ids"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AppUserApi.get_app_user_business_system_ids"
      end
      # resource path
      local_var_path = "/v1/apps/{appId}/appusers/{userId}/businesssystems".sub('{' + 'appId' + '}', app_id.to_s).sub('{' + 'userId' + '}', user_id.to_s)

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
        :return_type => 'AppUserBusinessSystemsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppUserApi#get_app_user_business_system_ids\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get specified app user's channel entity IDs.
    # @param app_id Identifies the app.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @return [AppUserChannelsResponse]
    def get_app_user_entity_ids(app_id, user_id, opts = {})
      data, _status_code, _headers = get_app_user_entity_ids_with_http_info(app_id, user_id, opts)
      return data
    end

    # 
    # Get specified app user&#39;s channel entity IDs.
    # @param app_id Identifies the app.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppUserChannelsResponse, Fixnum, Hash)>] AppUserChannelsResponse data, response status code and response headers
    def get_app_user_entity_ids_with_http_info(app_id, user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppUserApi.get_app_user_entity_ids ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AppUserApi.get_app_user_entity_ids"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AppUserApi.get_app_user_entity_ids"
      end
      # resource path
      local_var_path = "/v1/apps/{appId}/appusers/{userId}/channels".sub('{' + 'appId' + '}', app_id.to_s).sub('{' + 'userId' + '}', user_id.to_s)

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
        :return_type => 'AppUserChannelsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppUserApi#get_app_user_entity_ids\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Fetch link requests for the specified app user.
    # @param app_id Identifies the app.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param integration_ids List of integration IDs
    # @param [Hash] opts the optional parameters
    # @return [LinkRequestResponse]
    def get_link_requests(app_id, user_id, integration_ids, opts = {})
      data, _status_code, _headers = get_link_requests_with_http_info(app_id, user_id, integration_ids, opts)
      return data
    end

    # 
    # Fetch link requests for the specified app user.
    # @param app_id Identifies the app.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param integration_ids List of integration IDs
    # @param [Hash] opts the optional parameters
    # @return [Array<(LinkRequestResponse, Fixnum, Hash)>] LinkRequestResponse data, response status code and response headers
    def get_link_requests_with_http_info(app_id, user_id, integration_ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppUserApi.get_link_requests ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AppUserApi.get_link_requests"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AppUserApi.get_link_requests"
      end
      # verify the required parameter 'integration_ids' is set
      if @api_client.config.client_side_validation && integration_ids.nil?
        fail ArgumentError, "Missing the required parameter 'integration_ids' when calling AppUserApi.get_link_requests"
      end
      if @api_client.config.client_side_validation && integration_ids.length < 1
        fail ArgumentError, 'invalid value for "integration_ids" when calling AppUserApi.get_link_requests, number of items must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = "/v1/apps/{appId}/appusers/{userId}/linkrequest".sub('{' + 'appId' + '}', app_id.to_s).sub('{' + 'userId' + '}', user_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'integrationIds'] = @api_client.build_collection_param(integration_ids, :csv)

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
        :return_type => 'LinkRequestResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppUserApi#get_link_requests\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Link specified app user to given channel.
    # @param app_id Identifies the app.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param app_user_link_body Body for a linkAppUser request.
    # @param [Hash] opts the optional parameters
    # @return [AppUserResponse]
    def link_app_user(app_id, user_id, app_user_link_body, opts = {})
      data, _status_code, _headers = link_app_user_with_http_info(app_id, user_id, app_user_link_body, opts)
      return data
    end

    # 
    # Link specified app user to given channel.
    # @param app_id Identifies the app.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param app_user_link_body Body for a linkAppUser request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppUserResponse, Fixnum, Hash)>] AppUserResponse data, response status code and response headers
    def link_app_user_with_http_info(app_id, user_id, app_user_link_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppUserApi.link_app_user ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AppUserApi.link_app_user"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AppUserApi.link_app_user"
      end
      # verify the required parameter 'app_user_link_body' is set
      if @api_client.config.client_side_validation && app_user_link_body.nil?
        fail ArgumentError, "Missing the required parameter 'app_user_link_body' when calling AppUserApi.link_app_user"
      end
      # resource path
      local_var_path = "/v1/apps/{appId}/appusers/{userId}/channels".sub('{' + 'appId' + '}', app_id.to_s).sub('{' + 'userId' + '}', user_id.to_s)

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
      post_body = @api_client.object_to_http_body(app_user_link_body)
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AppUserResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppUserApi#link_app_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Send an image message to the conversation.
    # @param app_id Identifies the app.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param source Image to be uploaded
    # @param role Role of the sender
    # @param [Hash] opts the optional parameters
    # @return [MessageResponse]
    def post_image_message(app_id, user_id, source, role, opts = {})
      data, _status_code, _headers = post_image_message_with_http_info(app_id, user_id, source, role, opts)
      return data
    end

    # 
    # Send an image message to the conversation.
    # @param app_id Identifies the app.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param source Image to be uploaded
    # @param role Role of the sender
    # @param [Hash] opts the optional parameters
    # @return [Array<(MessageResponse, Fixnum, Hash)>] MessageResponse data, response status code and response headers
    def post_image_message_with_http_info(app_id, user_id, source, role, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppUserApi.post_image_message ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AppUserApi.post_image_message"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AppUserApi.post_image_message"
      end
      # verify the required parameter 'source' is set
      if @api_client.config.client_side_validation && source.nil?
        fail ArgumentError, "Missing the required parameter 'source' when calling AppUserApi.post_image_message"
      end
      # verify the required parameter 'role' is set
      if @api_client.config.client_side_validation && role.nil?
        fail ArgumentError, "Missing the required parameter 'role' when calling AppUserApi.post_image_message"
      end
      # resource path
      local_var_path = "/v1/apps/{appId}/appusers/{userId}/images".sub('{' + 'appId' + '}', app_id.to_s).sub('{' + 'userId' + '}', user_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params["source"] = source
      form_params["role"] = role

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MessageResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppUserApi#post_image_message\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Pre-create an app user.
    # @param app_id Identifies the app.
    # @param app_user_pre_create_body Body for a preCreateAppUser request.
    # @param [Hash] opts the optional parameters
    # @return [AppUserResponse]
    def pre_create_app_user(app_id, app_user_pre_create_body, opts = {})
      data, _status_code, _headers = pre_create_app_user_with_http_info(app_id, app_user_pre_create_body, opts)
      return data
    end

    # 
    # Pre-create an app user.
    # @param app_id Identifies the app.
    # @param app_user_pre_create_body Body for a preCreateAppUser request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppUserResponse, Fixnum, Hash)>] AppUserResponse data, response status code and response headers
    def pre_create_app_user_with_http_info(app_id, app_user_pre_create_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppUserApi.pre_create_app_user ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AppUserApi.pre_create_app_user"
      end
      # verify the required parameter 'app_user_pre_create_body' is set
      if @api_client.config.client_side_validation && app_user_pre_create_body.nil?
        fail ArgumentError, "Missing the required parameter 'app_user_pre_create_body' when calling AppUserApi.pre_create_app_user"
      end
      # resource path
      local_var_path = "/v1/apps/{appId}/appusers".sub('{' + 'appId' + '}', app_id.to_s)

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
      post_body = @api_client.object_to_http_body(app_user_pre_create_body)
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AppUserResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppUserApi#pre_create_app_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Unlink specified app user from given channel.
    # @param app_id Identifies the app.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param channel Name of the channel.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def unlink_app_user(app_id, user_id, channel, opts = {})
      unlink_app_user_with_http_info(app_id, user_id, channel, opts)
      return nil
    end

    # 
    # Unlink specified app user from given channel.
    # @param app_id Identifies the app.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param channel Name of the channel.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def unlink_app_user_with_http_info(app_id, user_id, channel, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppUserApi.unlink_app_user ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AppUserApi.unlink_app_user"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AppUserApi.unlink_app_user"
      end
      # verify the required parameter 'channel' is set
      if @api_client.config.client_side_validation && channel.nil?
        fail ArgumentError, "Missing the required parameter 'channel' when calling AppUserApi.unlink_app_user"
      end
      # resource path
      local_var_path = "/v1/apps/{appId}/appusers/{userId}/channels/{channel}".sub('{' + 'appId' + '}', app_id.to_s).sub('{' + 'userId' + '}', user_id.to_s).sub('{' + 'channel' + '}', channel.to_s)

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
        @api_client.config.logger.debug "API called: AppUserApi#unlink_app_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update the specified app user.
    # @param app_id Identifies the app.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param app_user_update_body Body for an updateAppUser request.
    # @param [Hash] opts the optional parameters
    # @return [AppUserResponse]
    def update_app_user(app_id, user_id, app_user_update_body, opts = {})
      data, _status_code, _headers = update_app_user_with_http_info(app_id, user_id, app_user_update_body, opts)
      return data
    end

    # 
    # Update the specified app user.
    # @param app_id Identifies the app.
    # @param user_id Identifies the user. Can be either the smoochId or the userId.
    # @param app_user_update_body Body for an updateAppUser request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppUserResponse, Fixnum, Hash)>] AppUserResponse data, response status code and response headers
    def update_app_user_with_http_info(app_id, user_id, app_user_update_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppUserApi.update_app_user ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AppUserApi.update_app_user"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AppUserApi.update_app_user"
      end
      # verify the required parameter 'app_user_update_body' is set
      if @api_client.config.client_side_validation && app_user_update_body.nil?
        fail ArgumentError, "Missing the required parameter 'app_user_update_body' when calling AppUserApi.update_app_user"
      end
      # resource path
      local_var_path = "/v1/apps/{appId}/appusers/{userId}".sub('{' + 'appId' + '}', app_id.to_s).sub('{' + 'userId' + '}', user_id.to_s)

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
      post_body = @api_client.object_to_http_body(app_user_update_body)
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AppUserResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppUserApi#update_app_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
