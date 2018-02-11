# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::GraphRbac::V1_6
  module Models
    #
    # Request parameters for GetMemberGroups API call.
    #
    class GroupGetMemberGroupsParameters

      include MsRestAzure

      # @return Unmatched properties from the message are deserialized this
      # collection
      attr_accessor :additional_properties

      # @return [Boolean] If true, only membership in security-enabled groups
      # should be checked. Otherwise, membership in all groups should be
      # checked.
      attr_accessor :security_enabled_only


      #
      # Mapper for GroupGetMemberGroupsParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GroupGetMemberGroupsParameters',
          type: {
            name: 'Composite',
            class_name: 'GroupGetMemberGroupsParameters',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              security_enabled_only: {
                client_side_validation: true,
                required: true,
                serialized_name: 'securityEnabledOnly',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
