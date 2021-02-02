# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_09_30
  module Models
    #
    # Describes the resource range.
    #
    class ResourceRange

      include MsRestAzure

      # @return [Integer] The minimum number of the resource.
      attr_accessor :min

      # @return [Integer] The maximum number of the resource.
      attr_accessor :max


      #
      # Mapper for ResourceRange class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourceRange',
          type: {
            name: 'Composite',
            class_name: 'ResourceRange',
            model_properties: {
              min: {
                client_side_validation: true,
                required: false,
                serialized_name: 'min',
                type: {
                  name: 'Number'
                }
              },
              max: {
                client_side_validation: true,
                required: false,
                serialized_name: 'max',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
