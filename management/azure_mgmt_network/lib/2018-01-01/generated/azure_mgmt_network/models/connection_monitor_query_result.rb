# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2018_01_01
  module Models
    #
    # List of connection states snaphots.
    #
    class ConnectionMonitorQueryResult

      include MsRestAzure

      # @return [Array<ConnectionStateSnapshot>] Information about connection
      # states.
      attr_accessor :states


      #
      # Mapper for ConnectionMonitorQueryResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectionMonitorQueryResult',
          type: {
            name: 'Composite',
            class_name: 'ConnectionMonitorQueryResult',
            model_properties: {
              states: {
                client_side_validation: true,
                required: false,
                serialized_name: 'states',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ConnectionStateSnapshotElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ConnectionStateSnapshot'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
