# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Redis::Mgmt::V2017_10_01
  module Models
    #
    # Response to put/get patch schedules for Redis cache.
    #
    class RedisPatchSchedule < ProxyResource

      include MsRestAzure

      # @return [Array<ScheduleEntry>] List of patch schedules for a Redis
      # cache.
      attr_accessor :schedule_entries


      #
      # Mapper for RedisPatchSchedule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RedisPatchSchedule',
          type: {
            name: 'Composite',
            class_name: 'RedisPatchSchedule',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              schedule_entries: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.scheduleEntries',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ScheduleEntryElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ScheduleEntry'
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
