# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_10_01_preview
  module Models
    #
    # Model object.
    #
    #
    class RoleInstanceProperties

      include MsRestAzure

      # @return [RoleInstanceNetworkProfile]
      attr_accessor :network_profile

      # @return [RoleInstanceInstanceView]
      attr_accessor :instance_view


      #
      # Mapper for RoleInstanceProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RoleInstanceProperties',
          type: {
            name: 'Composite',
            class_name: 'RoleInstanceProperties',
            model_properties: {
              network_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'networkProfile',
                type: {
                  name: 'Composite',
                  class_name: 'RoleInstanceNetworkProfile'
                }
              },
              instance_view: {
                client_side_validation: true,
                required: false,
                serialized_name: 'instanceView',
                type: {
                  name: 'Composite',
                  class_name: 'RoleInstanceInstanceView'
                }
              }
            }
          }
        }
      end
    end
  end
end
