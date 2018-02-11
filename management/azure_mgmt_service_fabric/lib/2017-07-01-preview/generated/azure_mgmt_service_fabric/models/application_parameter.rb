# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::Mgmt::V2017_07_01_preview
  module Models
    #
    # Describes an application parameter override to be applied when creating
    # or upgrading an application.
    #
    class ApplicationParameter

      include MsRestAzure

      # @return [String] The name of the parameter.
      attr_accessor :key

      # @return [String] The value of the parameter.
      attr_accessor :value


      #
      # Mapper for ApplicationParameter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationParameter',
          type: {
            name: 'Composite',
            class_name: 'ApplicationParameter',
            model_properties: {
              key: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Key',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Value',
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
