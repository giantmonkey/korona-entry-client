=begin
#KORONA.entry API v1

#Our api provides access to our entry services

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

require 'cgi'

module KoronaEntryClient
  class OrganizationalUnitsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a new organizational unit.
    # @param client [String] Identification of executing client.
    # @param body [OrganizationalUnit] Properties to update of the organizational unit.
    # @param [Hash] opts the optional parameters
    # @return [ModelReference]
    def create_organizational_unit(client, body, opts = {})
      data, _status_code, _headers = create_organizational_unit_with_http_info(client, body, opts)
      data
    end

    # Creates a new organizational unit.
    # @param client [String] Identification of executing client.
    # @param body [OrganizationalUnit] Properties to update of the organizational unit.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ModelReference, Integer, Hash)>] ModelReference data, response status code and response headers
    def create_organizational_unit_with_http_info(client, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationalUnitsApi.create_organizational_unit ...'
      end
      # verify the required parameter 'client' is set
      if @api_client.config.client_side_validation && client.nil?
        fail ArgumentError, "Missing the required parameter 'client' when calling OrganizationalUnitsApi.create_organizational_unit"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling OrganizationalUnitsApi.create_organizational_unit"
      end
      # resource path
      local_var_path = '/{client}/organizationalUnits'.sub('{' + 'client' + '}', CGI.escape(client.to_s))

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
        @api_client.config.logger.debug "API called: OrganizationalUnitsApi#create_organizational_unit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes the single organizational unit.
    # @param client [String] Identification of executing client.
    # @param organizational_unit_id [Integer] ID to identify the organizational unit.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_organizational_unit(client, organizational_unit_id, opts = {})
      delete_organizational_unit_with_http_info(client, organizational_unit_id, opts)
      nil
    end

    # Deletes the single organizational unit.
    # @param client [String] Identification of executing client.
    # @param organizational_unit_id [Integer] ID to identify the organizational unit.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_organizational_unit_with_http_info(client, organizational_unit_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationalUnitsApi.delete_organizational_unit ...'
      end
      # verify the required parameter 'client' is set
      if @api_client.config.client_side_validation && client.nil?
        fail ArgumentError, "Missing the required parameter 'client' when calling OrganizationalUnitsApi.delete_organizational_unit"
      end
      # verify the required parameter 'organizational_unit_id' is set
      if @api_client.config.client_side_validation && organizational_unit_id.nil?
        fail ArgumentError, "Missing the required parameter 'organizational_unit_id' when calling OrganizationalUnitsApi.delete_organizational_unit"
      end
      # resource path
      local_var_path = '/{client}/organizationalUnits/{organizationalUnitId}'.sub('{' + 'client' + '}', CGI.escape(client.to_s)).sub('{' + 'organizationalUnitId' + '}', CGI.escape(organizational_unit_id.to_s))

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
        @api_client.config.logger.debug "API called: OrganizationalUnitsApi#delete_organizational_unit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns the single organizational unit.
    # @param client [String] Identification of executing client.
    # @param organizational_unit_id [Integer] ID to identify the organizational unit.
    # @param [Hash] opts the optional parameters
    # @return [OrganizationalUnit]
    def get_organizational_unit(client, organizational_unit_id, opts = {})
      data, _status_code, _headers = get_organizational_unit_with_http_info(client, organizational_unit_id, opts)
      data
    end

    # Returns the single organizational unit.
    # @param client [String] Identification of executing client.
    # @param organizational_unit_id [Integer] ID to identify the organizational unit.
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrganizationalUnit, Integer, Hash)>] OrganizationalUnit data, response status code and response headers
    def get_organizational_unit_with_http_info(client, organizational_unit_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationalUnitsApi.get_organizational_unit ...'
      end
      # verify the required parameter 'client' is set
      if @api_client.config.client_side_validation && client.nil?
        fail ArgumentError, "Missing the required parameter 'client' when calling OrganizationalUnitsApi.get_organizational_unit"
      end
      # verify the required parameter 'organizational_unit_id' is set
      if @api_client.config.client_side_validation && organizational_unit_id.nil?
        fail ArgumentError, "Missing the required parameter 'organizational_unit_id' when calling OrganizationalUnitsApi.get_organizational_unit"
      end
      # resource path
      local_var_path = '/{client}/organizationalUnits/{organizationalUnitId}'.sub('{' + 'client' + '}', CGI.escape(client.to_s)).sub('{' + 'organizationalUnitId' + '}', CGI.escape(organizational_unit_id.to_s))

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
      return_type = opts[:return_type] || 'OrganizationalUnit' 

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
        @api_client.config.logger.debug "API called: OrganizationalUnitsApi#get_organizational_unit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns all organizational unit
    # @param client [String] Identification of executing client.
    # @param [Hash] opts the optional parameters
    # @return [OrganizationalUnitList]
    def get_organizational_units(client, opts = {})
      data, _status_code, _headers = get_organizational_units_with_http_info(client, opts)
      data
    end

    # Returns all organizational unit
    # @param client [String] Identification of executing client.
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrganizationalUnitList, Integer, Hash)>] OrganizationalUnitList data, response status code and response headers
    def get_organizational_units_with_http_info(client, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationalUnitsApi.get_organizational_units ...'
      end
      # verify the required parameter 'client' is set
      if @api_client.config.client_side_validation && client.nil?
        fail ArgumentError, "Missing the required parameter 'client' when calling OrganizationalUnitsApi.get_organizational_units"
      end
      # resource path
      local_var_path = '/{client}/organizationalUnits'.sub('{' + 'client' + '}', CGI.escape(client.to_s))

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
      return_type = opts[:return_type] || 'OrganizationalUnitList' 

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
        @api_client.config.logger.debug "API called: OrganizationalUnitsApi#get_organizational_units\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates the single organizational unit.
    # @param client [String] Identification of executing client.
    # @param organizational_unit_id [Integer] ID to identify the organizational unit.
    # @param body [OrganizationalUnit] Properties to update of the organizational unit.
    # @param [Hash] opts the optional parameters
    # @return [ModelReference]
    def update_organizational_unit(client, organizational_unit_id, body, opts = {})
      data, _status_code, _headers = update_organizational_unit_with_http_info(client, organizational_unit_id, body, opts)
      data
    end

    # Updates the single organizational unit.
    # @param client [String] Identification of executing client.
    # @param organizational_unit_id [Integer] ID to identify the organizational unit.
    # @param body [OrganizationalUnit] Properties to update of the organizational unit.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ModelReference, Integer, Hash)>] ModelReference data, response status code and response headers
    def update_organizational_unit_with_http_info(client, organizational_unit_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationalUnitsApi.update_organizational_unit ...'
      end
      # verify the required parameter 'client' is set
      if @api_client.config.client_side_validation && client.nil?
        fail ArgumentError, "Missing the required parameter 'client' when calling OrganizationalUnitsApi.update_organizational_unit"
      end
      # verify the required parameter 'organizational_unit_id' is set
      if @api_client.config.client_side_validation && organizational_unit_id.nil?
        fail ArgumentError, "Missing the required parameter 'organizational_unit_id' when calling OrganizationalUnitsApi.update_organizational_unit"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling OrganizationalUnitsApi.update_organizational_unit"
      end
      # resource path
      local_var_path = '/{client}/organizationalUnits/{organizationalUnitId}'.sub('{' + 'client' + '}', CGI.escape(client.to_s)).sub('{' + 'organizationalUnitId' + '}', CGI.escape(organizational_unit_id.to_s))

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
        @api_client.config.logger.debug "API called: OrganizationalUnitsApi#update_organizational_unit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
