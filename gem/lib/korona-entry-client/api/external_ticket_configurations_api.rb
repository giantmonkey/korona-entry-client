=begin
#KORONA.entry API v1

#Our api provides access to our entry services

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

require 'cgi'

module KoronaEntryClient
  class ExternalTicketConfigurationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a new external ticket configuration. If an unkown ticket number will be checked and the pattern of the ticket number will be equals to a pattern of a external ticket configuration, a new ticket will be created. The TicketEntry of the external ticket configuration will be copied and adjusted to the new ticket. The newly created ticket is then checked for validity.
    # @param client [String] Identification of executing client.
    # @param body [ExternalTicketConfiguration] Properties to update of the external ticket configuration.
    # @param [Hash] opts the optional parameters
    # @return [ModelReference]
    def create_external_ticket_configurations(client, body, opts = {})
      data, _status_code, _headers = create_external_ticket_configurations_with_http_info(client, body, opts)
      data
    end

    # Creates a new external ticket configuration. If an unkown ticket number will be checked and the pattern of the ticket number will be equals to a pattern of a external ticket configuration, a new ticket will be created. The TicketEntry of the external ticket configuration will be copied and adjusted to the new ticket. The newly created ticket is then checked for validity.
    # @param client [String] Identification of executing client.
    # @param body [ExternalTicketConfiguration] Properties to update of the external ticket configuration.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ModelReference, Integer, Hash)>] ModelReference data, response status code and response headers
    def create_external_ticket_configurations_with_http_info(client, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExternalTicketConfigurationsApi.create_external_ticket_configurations ...'
      end
      # verify the required parameter 'client' is set
      if @api_client.config.client_side_validation && client.nil?
        fail ArgumentError, "Missing the required parameter 'client' when calling ExternalTicketConfigurationsApi.create_external_ticket_configurations"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ExternalTicketConfigurationsApi.create_external_ticket_configurations"
      end
      # resource path
      local_var_path = '/{client}/externalTicketConfigurations'.sub('{' + 'client' + '}', CGI.escape(client.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      # return_type
      return_type = opts[:return_type] || 'ModelReference' 

      # auth_names
      auth_names = opts[:auth_names] || []

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
        @api_client.config.logger.debug "API called: ExternalTicketConfigurationsApi#create_external_ticket_configurations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes the single external ticket configuration.
    # @param client [String] Identification of executing client.
    # @param external_ticket_configuration_id [Integer] ID to identify the external ticket configuration.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_external_ticket_configuration(client, external_ticket_configuration_id, opts = {})
      delete_external_ticket_configuration_with_http_info(client, external_ticket_configuration_id, opts)
      nil
    end

    # Deletes the single external ticket configuration.
    # @param client [String] Identification of executing client.
    # @param external_ticket_configuration_id [Integer] ID to identify the external ticket configuration.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_external_ticket_configuration_with_http_info(client, external_ticket_configuration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExternalTicketConfigurationsApi.delete_external_ticket_configuration ...'
      end
      # verify the required parameter 'client' is set
      if @api_client.config.client_side_validation && client.nil?
        fail ArgumentError, "Missing the required parameter 'client' when calling ExternalTicketConfigurationsApi.delete_external_ticket_configuration"
      end
      # verify the required parameter 'external_ticket_configuration_id' is set
      if @api_client.config.client_side_validation && external_ticket_configuration_id.nil?
        fail ArgumentError, "Missing the required parameter 'external_ticket_configuration_id' when calling ExternalTicketConfigurationsApi.delete_external_ticket_configuration"
      end
      # resource path
      local_var_path = '/{client}/externalTicketConfigurations/{externalTicketConfigurationId}'.sub('{' + 'client' + '}', CGI.escape(client.to_s)).sub('{' + 'externalTicketConfigurationId' + '}', CGI.escape(external_ticket_configuration_id.to_s))

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
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || []

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
        @api_client.config.logger.debug "API called: ExternalTicketConfigurationsApi#delete_external_ticket_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns the external ticket configuration.
    # @param client [String] Identification of executing client.
    # @param external_ticket_configuration_id [Integer] ID to identify the external ticket configuration.
    # @param [Hash] opts the optional parameters
    # @return [ExternalTicketConfiguration]
    def get_external_ticket_configuration(client, external_ticket_configuration_id, opts = {})
      data, _status_code, _headers = get_external_ticket_configuration_with_http_info(client, external_ticket_configuration_id, opts)
      data
    end

    # Returns the external ticket configuration.
    # @param client [String] Identification of executing client.
    # @param external_ticket_configuration_id [Integer] ID to identify the external ticket configuration.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExternalTicketConfiguration, Integer, Hash)>] ExternalTicketConfiguration data, response status code and response headers
    def get_external_ticket_configuration_with_http_info(client, external_ticket_configuration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExternalTicketConfigurationsApi.get_external_ticket_configuration ...'
      end
      # verify the required parameter 'client' is set
      if @api_client.config.client_side_validation && client.nil?
        fail ArgumentError, "Missing the required parameter 'client' when calling ExternalTicketConfigurationsApi.get_external_ticket_configuration"
      end
      # verify the required parameter 'external_ticket_configuration_id' is set
      if @api_client.config.client_side_validation && external_ticket_configuration_id.nil?
        fail ArgumentError, "Missing the required parameter 'external_ticket_configuration_id' when calling ExternalTicketConfigurationsApi.get_external_ticket_configuration"
      end
      # resource path
      local_var_path = '/{client}/externalTicketConfigurations/{externalTicketConfigurationId}'.sub('{' + 'client' + '}', CGI.escape(client.to_s)).sub('{' + 'externalTicketConfigurationId' + '}', CGI.escape(external_ticket_configuration_id.to_s))

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
      return_type = opts[:return_type] || 'ExternalTicketConfiguration' 

      # auth_names
      auth_names = opts[:auth_names] || []

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
        @api_client.config.logger.debug "API called: ExternalTicketConfigurationsApi#get_external_ticket_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns all external ticket configurations
    # @param client [String] Identification of executing client.
    # @param [Hash] opts the optional parameters
    # @return [ExternalTicketConfigurationList]
    def get_external_ticket_configurations(client, opts = {})
      data, _status_code, _headers = get_external_ticket_configurations_with_http_info(client, opts)
      data
    end

    # Returns all external ticket configurations
    # @param client [String] Identification of executing client.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExternalTicketConfigurationList, Integer, Hash)>] ExternalTicketConfigurationList data, response status code and response headers
    def get_external_ticket_configurations_with_http_info(client, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExternalTicketConfigurationsApi.get_external_ticket_configurations ...'
      end
      # verify the required parameter 'client' is set
      if @api_client.config.client_side_validation && client.nil?
        fail ArgumentError, "Missing the required parameter 'client' when calling ExternalTicketConfigurationsApi.get_external_ticket_configurations"
      end
      # resource path
      local_var_path = '/{client}/externalTicketConfigurations'.sub('{' + 'client' + '}', CGI.escape(client.to_s))

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
      return_type = opts[:return_type] || 'ExternalTicketConfigurationList' 

      # auth_names
      auth_names = opts[:auth_names] || []

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
        @api_client.config.logger.debug "API called: ExternalTicketConfigurationsApi#get_external_ticket_configurations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates the single external ticket configuration.
    # @param client [String] Identification of executing client.
    # @param external_ticket_configuration_id [Integer] ID to identify the external ticket configuration.
    # @param body [ExternalTicketConfiguration] Properties to update of the external ticket configuration.
    # @param [Hash] opts the optional parameters
    # @return [ModelReference]
    def update_external_ticket_configuration(client, external_ticket_configuration_id, body, opts = {})
      data, _status_code, _headers = update_external_ticket_configuration_with_http_info(client, external_ticket_configuration_id, body, opts)
      data
    end

    # Updates the single external ticket configuration.
    # @param client [String] Identification of executing client.
    # @param external_ticket_configuration_id [Integer] ID to identify the external ticket configuration.
    # @param body [ExternalTicketConfiguration] Properties to update of the external ticket configuration.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ModelReference, Integer, Hash)>] ModelReference data, response status code and response headers
    def update_external_ticket_configuration_with_http_info(client, external_ticket_configuration_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExternalTicketConfigurationsApi.update_external_ticket_configuration ...'
      end
      # verify the required parameter 'client' is set
      if @api_client.config.client_side_validation && client.nil?
        fail ArgumentError, "Missing the required parameter 'client' when calling ExternalTicketConfigurationsApi.update_external_ticket_configuration"
      end
      # verify the required parameter 'external_ticket_configuration_id' is set
      if @api_client.config.client_side_validation && external_ticket_configuration_id.nil?
        fail ArgumentError, "Missing the required parameter 'external_ticket_configuration_id' when calling ExternalTicketConfigurationsApi.update_external_ticket_configuration"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ExternalTicketConfigurationsApi.update_external_ticket_configuration"
      end
      # resource path
      local_var_path = '/{client}/externalTicketConfigurations/{externalTicketConfigurationId}'.sub('{' + 'client' + '}', CGI.escape(client.to_s)).sub('{' + 'externalTicketConfigurationId' + '}', CGI.escape(external_ticket_configuration_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      # return_type
      return_type = opts[:return_type] || 'ModelReference' 

      # auth_names
      auth_names = opts[:auth_names] || []

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
        @api_client.config.logger.debug "API called: ExternalTicketConfigurationsApi#update_external_ticket_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end