# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2017_10_01
  module Models
    #
    # Availability of the metric.
    #
    class Availability

      include MsRestAzure

      # @return [String] The time grain of the availability.
      attr_accessor :time_grain

      # @return [String] The retention of the availability.
      attr_accessor :retention

      # @return [String] Duration of the availability blob.
      attr_accessor :blob_duration


      #
      # Mapper for Availability class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Availability',
          type: {
            name: 'Composite',
            class_name: 'Availability',
            model_properties: {
              time_grain: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timeGrain',
                type: {
                  name: 'String'
                }
              },
              retention: {
                client_side_validation: true,
                required: false,
                serialized_name: 'retention',
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
              }
            }
          }
        }
      end
    end
  end
end
