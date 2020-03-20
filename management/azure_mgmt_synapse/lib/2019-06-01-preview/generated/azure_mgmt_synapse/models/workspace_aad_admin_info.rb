# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Synapse::Mgmt::V2019_06_01_preview
  module Models
    #
    # Workspace active directory administrator
    #
    class WorkspaceAadAdminInfo < ProxyResource

      include MsRestAzure

      # @return [String] Tenant ID of the workspace active directory
      # administrator
      attr_accessor :tenant_id

      # @return [String] Login of the workspace active directory administrator
      attr_accessor :login

      # @return [String] Workspace active directory administrator type
      attr_accessor :administrator_type

      # @return [String] Object ID of the workspace active directory
      # administrator
      attr_accessor :sid


      #
      # Mapper for WorkspaceAadAdminInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WorkspaceAadAdminInfo',
          type: {
            name: 'Composite',
            class_name: 'WorkspaceAadAdminInfo',
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
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              tenant_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.tenantId',
                type: {
                  name: 'String'
                }
              },
              login: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.login',
                type: {
                  name: 'String'
                }
              },
              administrator_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.administratorType',
                type: {
                  name: 'String'
                }
              },
              sid: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sid',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
