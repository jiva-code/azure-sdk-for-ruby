# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative 'spec_helper'

include MsRestAzure
include Azure::Resources::Mgmt::V2017_05_10
include Azure::DataLakeAnalytics::Mgmt::V2016_11_01

describe 'DataLakeAnalyticsClient Account' do
  before(:each) do
    @resource_helper = ResourceHelper.new
    @resource_group = @resource_helper.create_resource_group
    @dl_store_acc = @resource_helper.create_datalake_store_account('dlstoreacc')
    @client = @resource_helper.dla_acc_client.accounts

    @datalake_analytics_acc_name = 'dlanalyticsacc'
  end

  after(:each) do
    @resource_helper.delete_resource_group(@resource_group.name)
  end

  it 'should create update and delete account' do
    # Create
    analytics_acc = Models::DataLakeAnalyticsAccount.new
    analytics_acc.name = @datalake_analytics_acc_name
    analytics_acc.location = 'East US 2'
    analytics_acc.tags = {
        :testtag1 => :testtag1,
        :testtag2 => :testtag2,
    }
    analytics_acc.default_data_lake_store_account = @dl_store_acc.name
    dla_acc_info = Models::DataLakeStoreAccountInformation.new
    dla_acc_info.name = @dl_store_acc.name

    analytics_acc.data_lake_store_accounts = [dla_acc_info]

    result = @client.create_async(@resource_group.name, @datalake_analytics_acc_name, analytics_acc).value!
    expect(result.body).to be_an_instance_of(Models::DataLakeAnalyticsAccount)
    expect(result.body.name).to eq(@datalake_analytics_acc_name)
    expect(result.body.tags.count).to eq(2)

    # Update
    analytics_acc_update_parameters = Models::UpdateDataLakeAnalyticsAccountParameters.new
    analytics_acc_update_parameters.tags = {
        :testtag1 => :testtag1,
        :testtag2 => :testtag2,
        :testtag3 => :testtag3,
    }

    result = @client.update_async(@resource_group.name, @datalake_analytics_acc_name, parameters:analytics_acc_update_parameters).value!
    expect(result.body).to be_an_instance_of(Models::DataLakeAnalyticsAccount)
    expect(result.body.name).to eq(@datalake_analytics_acc_name)
    expect(result.body.tags.count).to eq(3)

    # Delete
    result = @client.delete_async(@resource_group.name, @datalake_analytics_acc_name).value!
    expect(result.response.status).to eq(200)
  end
end
