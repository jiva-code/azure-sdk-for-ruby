# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2015_04_01
  module Models
    #
    # Description of the App Service plan scale options.
    #
    class SkuCapacity

      include MsRestAzure

      # @return [Integer] Minimum number of workers for this App Service plan
      # SKU.
      attr_accessor :minimum

      # @return [Integer] Maximum number of workers for this App Service plan
      # SKU.
      attr_accessor :maximum

      # @return [Integer] Default number of workers for this App Service plan
      # SKU.
      attr_accessor :default

      # @return [String] Available scale configurations for an App Service
      # plan.
      attr_accessor :scale_type


      #
      # Mapper for SkuCapacity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SkuCapacity',
          type: {
            name: 'Composite',
            class_name: 'SkuCapacity',
            model_properties: {
              minimum: {
                client_side_validation: true,
                required: false,
                serialized_name: 'minimum',
                type: {
                  name: 'Number'
                }
              },
              maximum: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maximum',
                type: {
                  name: 'Number'
                }
              },
              default: {
                client_side_validation: true,
                required: false,
                serialized_name: 'default',
                type: {
                  name: 'Number'
                }
              },
              scale_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scaleType',
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
