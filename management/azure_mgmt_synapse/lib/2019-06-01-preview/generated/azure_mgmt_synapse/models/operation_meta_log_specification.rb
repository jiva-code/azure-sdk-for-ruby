# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Synapse::Mgmt::V2019_06_01_preview
  module Models
    #
    # What is this?
    #
    class OperationMetaLogSpecification

      include MsRestAzure

      # @return [String] Log display name
      attr_accessor :display_name

      # @return [String] Time range the log covers
      attr_accessor :blob_duration

      # @return [String] Log unique name
      attr_accessor :name


      #
      # Mapper for OperationMetaLogSpecification class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationMetaLogSpecification',
          type: {
            name: 'Composite',
            class_name: 'OperationMetaLogSpecification',
            model_properties: {
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              blob_duration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'blobDuration',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
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
