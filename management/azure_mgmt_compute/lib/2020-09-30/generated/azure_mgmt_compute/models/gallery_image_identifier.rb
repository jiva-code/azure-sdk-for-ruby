# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_09_30
  module Models
    #
    # This is the gallery image definition identifier.
    #
    class GalleryImageIdentifier

      include MsRestAzure

      # @return [String] The name of the gallery image definition publisher.
      attr_accessor :publisher

      # @return [String] The name of the gallery image definition offer.
      attr_accessor :offer

      # @return [String] The name of the gallery image definition SKU.
      attr_accessor :sku


      #
      # Mapper for GalleryImageIdentifier class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GalleryImageIdentifier',
          type: {
            name: 'Composite',
            class_name: 'GalleryImageIdentifier',
            model_properties: {
              publisher: {
                client_side_validation: true,
                required: true,
                serialized_name: 'publisher',
                type: {
                  name: 'String'
                }
              },
              offer: {
                client_side_validation: true,
                required: true,
                serialized_name: 'offer',
                type: {
                  name: 'String'
                }
              },
              sku: {
                client_side_validation: true,
                required: true,
                serialized_name: 'sku',
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
