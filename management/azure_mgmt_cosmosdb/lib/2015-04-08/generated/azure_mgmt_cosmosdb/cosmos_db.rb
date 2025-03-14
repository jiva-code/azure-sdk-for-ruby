# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2015_04_08
  #
  # A service client - single point of access to the REST API.
  #
  class CosmosDB < MsRestAzure::AzureServiceClient
    include MsRestAzure
    include MsRestAzure::Serialization

    # @return [String] the base URI of the service.
    attr_accessor :base_url

    # @return Credentials needed for the client to connect to Azure.
    attr_reader :credentials

    # @return [String] Azure subscription ID.
    attr_accessor :subscription_id

    # @return [String] Version of the API to be used with the client request.
    # The current version is 2015-04-08.
    attr_reader :api_version

    # @return [String] The preferred language for the response.
    attr_accessor :accept_language

    # @return [Integer] The retry timeout in seconds for Long Running
    # Operations. Default value is 30.
    attr_accessor :long_running_operation_retry_timeout

    # @return [Boolean] Whether a unique x-ms-client-request-id should be
    # generated. When set to true a unique x-ms-client-request-id value is
    # generated and included in each request. Default is true.
    attr_accessor :generate_client_request_id

    # @return [DatabaseAccounts] database_accounts
    attr_reader :database_accounts

    # @return [Operations] operations
    attr_reader :operations

    # @return [Database] database
    attr_reader :database

    # @return [Collection] collection
    attr_reader :collection

    # @return [CollectionRegion] collection_region
    attr_reader :collection_region

    # @return [DatabaseAccountRegion] database_account_region
    attr_reader :database_account_region

    # @return [PercentileSourceTarget] percentile_source_target
    attr_reader :percentile_source_target

    # @return [PercentileTarget] percentile_target
    attr_reader :percentile_target

    # @return [Percentile] percentile
    attr_reader :percentile

    # @return [CollectionPartitionRegion] collection_partition_region
    attr_reader :collection_partition_region

    # @return [CollectionPartition] collection_partition
    attr_reader :collection_partition

    # @return [PartitionKeyRangeId] partition_key_range_id
    attr_reader :partition_key_range_id

    # @return [PartitionKeyRangeIdRegion] partition_key_range_id_region
    attr_reader :partition_key_range_id_region

    #
    # Creates initializes a new instance of the CosmosDB class.
    # @param credentials [MsRest::ServiceClientCredentials] credentials to authorize HTTP requests made by the service client.
    # @param base_url [String] the base URI of the service.
    # @param options [Array] filters to be applied to the HTTP requests.
    #
    def initialize(credentials = nil, base_url = nil, options = nil)
      super(credentials, options)
      @base_url = base_url || 'https://management.azure.com'

      fail ArgumentError, 'invalid type of credentials input parameter' unless credentials.is_a?(MsRest::ServiceClientCredentials) unless credentials.nil?
      @credentials = credentials

      @database_accounts = DatabaseAccounts.new(self)
      @operations = Operations.new(self)
      @database = Database.new(self)
      @collection = Collection.new(self)
      @collection_region = CollectionRegion.new(self)
      @database_account_region = DatabaseAccountRegion.new(self)
      @percentile_source_target = PercentileSourceTarget.new(self)
      @percentile_target = PercentileTarget.new(self)
      @percentile = Percentile.new(self)
      @collection_partition_region = CollectionPartitionRegion.new(self)
      @collection_partition = CollectionPartition.new(self)
      @partition_key_range_id = PartitionKeyRangeId.new(self)
      @partition_key_range_id_region = PartitionKeyRangeIdRegion.new(self)
      @api_version = '2015-04-08'
      @accept_language = 'en-US'
      @long_running_operation_retry_timeout = 30
      @generate_client_request_id = true
      add_telemetry
    end

    #
    # Makes a request and returns the body of the response.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [Hash{String=>String}] containing the body of the response.
    # Example:
    #
    #  request_content = "{'location':'westus','tags':{'tag1':'val1','tag2':'val2'}}"
    #  path = "/path"
    #  options = {
    #    body: request_content,
    #    query_params: {'api-version' => '2016-02-01'}
    #  }
    #  result = @client.make_request(:put, path, options)
    #
    def make_request(method, path, options = {})
      result = make_request_with_http_info(method, path, options)
      result.body unless result.nil?
    end

    #
    # Makes a request and returns the operation response.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [MsRestAzure::AzureOperationResponse] Operation response containing the request, response and status.
    #
    def make_request_with_http_info(method, path, options = {})
      result = make_request_async(method, path, options).value!
      result.body = result.response.body.to_s.empty? ? nil : JSON.load(result.response.body)
      result
    end

    #
    # Makes a request asynchronously.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def make_request_async(method, path, options = {})
      fail ArgumentError, 'method is nil' if method.nil?
      fail ArgumentError, 'path is nil' if path.nil?

      request_url = options[:base_url] || @base_url
      if(!options[:headers].nil? && !options[:headers]['Content-Type'].nil?)
        @request_headers['Content-Type'] = options[:headers]['Content-Type']
      end

      request_headers = @request_headers
      request_headers.merge!({'accept-language' => @accept_language}) unless @accept_language.nil?
      options.merge!({headers: request_headers.merge(options[:headers] || {})})
      options.merge!({credentials: @credentials}) unless @credentials.nil?

      super(request_url, method, path, options)
    end


    private
    #
    # Adds telemetry information.
    #
    def add_telemetry
        sdk_information = 'azure_mgmt_cosmosdb'
        sdk_information = "#{sdk_information}/0.24.0"
        add_user_agent_information(sdk_information)
    end
  end
end
