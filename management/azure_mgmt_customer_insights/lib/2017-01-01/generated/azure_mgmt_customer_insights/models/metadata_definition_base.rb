# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CustomerInsights::Mgmt::V2017_01_01
  module Models
    #
    # The Metadata definition base.
    #
    class MetadataDefinitionBase

      include MsRestAzure

      # @return [Hash{String => Array<String>}] The attributes for the Type.
      attr_accessor :attributes

      # @return [Hash{String => String}] Localized descriptions for the
      # property.
      attr_accessor :description

      # @return [Hash{String => String}] Localized display names for the
      # property.
      attr_accessor :display_name

      # @return [Hash{String => Hash{String => String}}] Any custom localized
      # attributes for the Type.
      attr_accessor :localized_attributes

      # @return [String] Small Image associated with the Property or
      # EntityType.
      attr_accessor :small_image

      # @return [String] Medium Image associated with the Property or
      # EntityType.
      attr_accessor :medium_image

      # @return [String] Large Image associated with the Property or
      # EntityType.
      attr_accessor :large_image


      #
      # Mapper for MetadataDefinitionBase class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MetadataDefinitionBase',
          type: {
            name: 'Composite',
            class_name: 'MetadataDefinitionBase',
            model_properties: {
              attributes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'attributes',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ArrayElementType',
                      type: {
                        name: 'Sequence',
                        element: {
                            client_side_validation: true,
                            required: false,
                            serialized_name: 'StringElementType',
                            type: {
                              name: 'String'
                            }
                        }
                      }
                  }
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              localized_attributes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'localizedAttributes',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'HashElementType',
                      type: {
                        name: 'Dictionary',
                        value: {
                            client_side_validation: true,
                            required: false,
                            serialized_name: 'StringElementType',
                            type: {
                              name: 'String'
                            }
                        }
                      }
                  }
                }
              },
              small_image: {
                client_side_validation: true,
                required: false,
                serialized_name: 'smallImage',
                type: {
                  name: 'String'
                }
              },
              medium_image: {
                client_side_validation: true,
                required: false,
                serialized_name: 'mediumImage',
                type: {
                  name: 'String'
                }
              },
              large_image: {
                client_side_validation: true,
                required: false,
                serialized_name: 'largeImage',
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
