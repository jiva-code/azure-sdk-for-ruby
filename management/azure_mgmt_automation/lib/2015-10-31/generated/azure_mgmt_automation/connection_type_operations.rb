# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  #
  # Automation Client
  #
  class ConnectionTypeOperations
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ConnectionTypeOperations class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [AutomationClient] reference to the AutomationClient
    attr_reader :client

    #
    # Delete the connectiontype.
    #
    # @param automation_account_name [String] The automation account name.
    # @param connection_type_name [String] The name of connectiontype.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(automation_account_name, connection_type_name, custom_headers:nil)
      response = delete_async(automation_account_name, connection_type_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Delete the connectiontype.
    #
    # @param automation_account_name [String] The automation account name.
    # @param connection_type_name [String] The name of connectiontype.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(automation_account_name, connection_type_name, custom_headers:nil)
      delete_async(automation_account_name, connection_type_name, custom_headers:custom_headers).value!
    end

    #
    # Delete the connectiontype.
    #
    # @param automation_account_name [String] The automation account name.
    # @param connection_type_name [String] The name of connectiontype.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(automation_account_name, connection_type_name, custom_headers:nil)
      fail ArgumentError, '@client.resource_group_name is nil' if @client.resource_group_name.nil?
      fail ArgumentError, "'@client.resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !@client.resource_group_name.nil? && @client.resource_group_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, 'automation_account_name is nil' if automation_account_name.nil?
      fail ArgumentError, 'connection_type_name is nil' if connection_type_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/connectionTypes/{connectionTypeName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => @client.resource_group_name,'automationAccountName' => automation_account_name,'connectionTypeName' => connection_type_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Retrieve the connectiontype identified by connectiontype name.
    #
    # @param automation_account_name [String] The automation account name.
    # @param connection_type_name [String] The name of connectiontype.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ConnectionType] operation results.
    #
    def get(automation_account_name, connection_type_name, custom_headers:nil)
      response = get_async(automation_account_name, connection_type_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Retrieve the connectiontype identified by connectiontype name.
    #
    # @param automation_account_name [String] The automation account name.
    # @param connection_type_name [String] The name of connectiontype.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(automation_account_name, connection_type_name, custom_headers:nil)
      get_async(automation_account_name, connection_type_name, custom_headers:custom_headers).value!
    end

    #
    # Retrieve the connectiontype identified by connectiontype name.
    #
    # @param automation_account_name [String] The automation account name.
    # @param connection_type_name [String] The name of connectiontype.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(automation_account_name, connection_type_name, custom_headers:nil)
      fail ArgumentError, '@client.resource_group_name is nil' if @client.resource_group_name.nil?
      fail ArgumentError, "'@client.resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !@client.resource_group_name.nil? && @client.resource_group_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, 'automation_account_name is nil' if automation_account_name.nil?
      fail ArgumentError, 'connection_type_name is nil' if connection_type_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/connectionTypes/{connectionTypeName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => @client.resource_group_name,'automationAccountName' => automation_account_name,'connectionTypeName' => connection_type_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionType.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Create a connectiontype.
    #
    # @param automation_account_name [String] The automation account name.
    # @param connection_type_name [String] The parameters supplied to the create or
    # update connectiontype operation.
    # @param parameters [ConnectionTypeCreateOrUpdateParameters] The parameters
    # supplied to the create or update connectiontype operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ConnectionType] operation results.
    #
    def create_or_update(automation_account_name, connection_type_name, parameters, custom_headers:nil)
      response = create_or_update_async(automation_account_name, connection_type_name, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Create a connectiontype.
    #
    # @param automation_account_name [String] The automation account name.
    # @param connection_type_name [String] The parameters supplied to the create or
    # update connectiontype operation.
    # @param parameters [ConnectionTypeCreateOrUpdateParameters] The parameters
    # supplied to the create or update connectiontype operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(automation_account_name, connection_type_name, parameters, custom_headers:nil)
      create_or_update_async(automation_account_name, connection_type_name, parameters, custom_headers:custom_headers).value!
    end

    #
    # Create a connectiontype.
    #
    # @param automation_account_name [String] The automation account name.
    # @param connection_type_name [String] The parameters supplied to the create or
    # update connectiontype operation.
    # @param parameters [ConnectionTypeCreateOrUpdateParameters] The parameters
    # supplied to the create or update connectiontype operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(automation_account_name, connection_type_name, parameters, custom_headers:nil)
      fail ArgumentError, '@client.resource_group_name is nil' if @client.resource_group_name.nil?
      fail ArgumentError, "'@client.resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !@client.resource_group_name.nil? && @client.resource_group_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, 'automation_account_name is nil' if automation_account_name.nil?
      fail ArgumentError, 'connection_type_name is nil' if connection_type_name.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionTypeCreateOrUpdateParameters.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/connectionTypes/{connectionTypeName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => @client.resource_group_name,'automationAccountName' => automation_account_name,'connectionTypeName' => connection_type_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 201 || status_code == 409
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionType.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 409
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionType.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Retrieve a list of connectiontypes.
    #
    # @param automation_account_name [String] The automation account name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<ConnectionType>] operation results.
    #
    def list_by_automation_account(automation_account_name, custom_headers:nil)
      first_page = list_by_automation_account_as_lazy(automation_account_name, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Retrieve a list of connectiontypes.
    #
    # @param automation_account_name [String] The automation account name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_automation_account_with_http_info(automation_account_name, custom_headers:nil)
      list_by_automation_account_async(automation_account_name, custom_headers:custom_headers).value!
    end

    #
    # Retrieve a list of connectiontypes.
    #
    # @param automation_account_name [String] The automation account name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_automation_account_async(automation_account_name, custom_headers:nil)
      fail ArgumentError, '@client.resource_group_name is nil' if @client.resource_group_name.nil?
      fail ArgumentError, "'@client.resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !@client.resource_group_name.nil? && @client.resource_group_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, 'automation_account_name is nil' if automation_account_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/connectionTypes'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => @client.resource_group_name,'automationAccountName' => automation_account_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionTypeListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Retrieve a list of connectiontypes.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ConnectionTypeListResult] operation results.
    #
    def list_by_automation_account_next(next_page_link, custom_headers:nil)
      response = list_by_automation_account_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Retrieve a list of connectiontypes.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_automation_account_next_with_http_info(next_page_link, custom_headers:nil)
      list_by_automation_account_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Retrieve a list of connectiontypes.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_automation_account_next_async(next_page_link, custom_headers:nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionTypeListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Retrieve a list of connectiontypes.
    #
    # @param automation_account_name [String] The automation account name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ConnectionTypeListResult] which provide lazy access to pages of the
    # response.
    #
    def list_by_automation_account_as_lazy(automation_account_name, custom_headers:nil)
      response = list_by_automation_account_async(automation_account_name, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_automation_account_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
