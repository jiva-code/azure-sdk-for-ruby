# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2017_01_01
  module Models
    #
    # Parameters for an ApplicationOperations.UpdateApplication request.
    #
    class UpdateApplicationParameters

      include MsRestAzure

      # @return [Boolean] A value indicating whether packages within the
      # application may be overwritten using the same version string.
      attr_accessor :allow_updates

      # @return [String] The package to use if a client requests the
      # application but does not specify a version.
      attr_accessor :default_version

      # @return [String] The display name for the application.
      attr_accessor :display_name


      #
      # Mapper for UpdateApplicationParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UpdateApplicationParameters',
          type: {
            name: 'Composite',
            class_name: 'UpdateApplicationParameters',
            model_properties: {
              allow_updates: {
                client_side_validation: true,
                required: false,
                serialized_name: 'allowUpdates',
                type: {
                  name: 'Boolean'
                }
              },
              default_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'defaultVersion',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'displayName',
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
