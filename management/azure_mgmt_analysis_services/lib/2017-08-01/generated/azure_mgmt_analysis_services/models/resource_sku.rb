# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::AnalysisServices::Mgmt::V2017_08_01
  module Models
    #
    # Represents the SKU name and Azure pricing tier for Analysis Services
    # resource.
    #
    class ResourceSku

      include MsRestAzure

      # @return [String] Name of the SKU level.
      attr_accessor :name

      # @return [SkuTier] The name of the Azure pricing tier to which the SKU
      # applies. Possible values include: 'Development', 'Basic', 'Standard'
      attr_accessor :tier

      # @return [Integer] The number of instances in the read only query pool.
      # Default value: 1 .
      attr_accessor :capacity


      #
      # Mapper for ResourceSku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourceSku',
          type: {
            name: 'Composite',
            class_name: 'ResourceSku',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              tier: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tier',
                type: {
                  name: 'String'
                }
              },
              capacity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'capacity',
                default_value: 1,
                constraints: {
                  InclusiveMaximum: 8,
                  InclusiveMinimum: 1
                },
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
