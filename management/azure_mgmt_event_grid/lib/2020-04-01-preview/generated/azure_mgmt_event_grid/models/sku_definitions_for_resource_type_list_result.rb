# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2020_04_01_preview
  module Models
    #
    # List collection of Sku Definitions for each Resource Type.
    #
    class SkuDefinitionsForResourceTypeListResult

      include MsRestAzure

      # @return [Array<SkuDefinitionsForResourceType>] A collection of Sku
      # Definitions for each Resource Type.
      attr_accessor :value

      # @return [String] A link for the next page of Sku Definitions.
      attr_accessor :next_link


      #
      # Mapper for SkuDefinitionsForResourceTypeListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SkuDefinitionsForResourceTypeListResult',
          type: {
            name: 'Composite',
            class_name: 'SkuDefinitionsForResourceTypeListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SkuDefinitionsForResourceTypeElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SkuDefinitionsForResourceType'
                      }
                  }
                }
              },
              next_link: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nextLink',
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
