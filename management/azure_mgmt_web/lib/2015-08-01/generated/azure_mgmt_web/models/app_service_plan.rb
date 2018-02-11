# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2015_08_01
  module Models
    #
    # App Service plan.
    #
    class AppServicePlan < Resource

      include MsRestAzure

      # @return [String] Name for the App Service plan.
      attr_accessor :app_service_plan_name

      # @return [String] Target worker tier assigned to the App Service plan.
      attr_accessor :worker_tier_name

      # @return [StatusOptions] App Service plan status. Possible values
      # include: 'Ready', 'Pending', 'Creating'
      attr_accessor :status

      # @return [String] App Service plan subscription.
      attr_accessor :subscription

      # @return [String] App Service plan administration site.
      attr_accessor :admin_site_name

      # @return [HostingEnvironmentProfile] Specification for the App Service
      # Environment to use for the App Service plan.
      attr_accessor :hosting_environment_profile

      # @return [Integer] Maximum number of instances that can be assigned to
      # this App Service plan.
      attr_accessor :maximum_number_of_workers

      # @return [String] Geographical location for the App Service plan.
      attr_accessor :geo_region

      # @return [Boolean] If <code>true</code>, apps assigned to this App
      # Service plan can be scaled independently.
      # If <code>false</code>, apps assigned to this App Service plan will
      # scale to all instances of the plan. Default value: false .
      attr_accessor :per_site_scaling

      # @return [Integer] Number of apps assigned to this App Service plan.
      attr_accessor :number_of_sites

      # @return [Boolean] If <code>true</code>, this App Service Plan owns spot
      # instances.
      attr_accessor :is_spot

      # @return [DateTime] The time when the server farm expires. Valid only if
      # it is a spot server farm.
      attr_accessor :spot_expiration_time

      # @return [String] Resource group of the App Service plan.
      attr_accessor :resource_group

      # @return [Boolean] If Linux app service plan <code>true</code>,
      # <code>false</code> otherwise. Default value: false .
      attr_accessor :reserved

      # @return [Integer] Scaling worker count.
      attr_accessor :target_worker_count

      # @return [Integer] Scaling worker size ID.
      attr_accessor :target_worker_size_id

      # @return [ProvisioningState] Provisioning state of the App Service
      # Environment. Possible values include: 'Succeeded', 'Failed',
      # 'Canceled', 'InProgress', 'Deleting'
      attr_accessor :provisioning_state

      # @return [SkuDescription]
      attr_accessor :sku


      #
      # Mapper for AppServicePlan class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AppServicePlan',
          type: {
            name: 'Composite',
            class_name: 'AppServicePlan',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              app_service_plan_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.name',
                type: {
                  name: 'String'
                }
              },
              worker_tier_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.workerTierName',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.status',
                type: {
                  name: 'Enum',
                  module: 'StatusOptions'
                }
              },
              subscription: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.subscription',
                type: {
                  name: 'String'
                }
              },
              admin_site_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.adminSiteName',
                type: {
                  name: 'String'
                }
              },
              hosting_environment_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.hostingEnvironmentProfile',
                type: {
                  name: 'Composite',
                  class_name: 'HostingEnvironmentProfile'
                }
              },
              maximum_number_of_workers: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.maximumNumberOfWorkers',
                type: {
                  name: 'Number'
                }
              },
              geo_region: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.geoRegion',
                type: {
                  name: 'String'
                }
              },
              per_site_scaling: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.perSiteScaling',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              number_of_sites: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.numberOfSites',
                type: {
                  name: 'Number'
                }
              },
              is_spot: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isSpot',
                type: {
                  name: 'Boolean'
                }
              },
              spot_expiration_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.spotExpirationTime',
                type: {
                  name: 'DateTime'
                }
              },
              resource_group: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceGroup',
                type: {
                  name: 'String'
                }
              },
              reserved: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.reserved',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              target_worker_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.targetWorkerCount',
                type: {
                  name: 'Number'
                }
              },
              target_worker_size_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.targetWorkerSizeId',
                type: {
                  name: 'Number'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'Enum',
                  module: 'ProvisioningState'
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'SkuDescription'
                }
              }
            }
          }
        }
      end
    end
  end
end
