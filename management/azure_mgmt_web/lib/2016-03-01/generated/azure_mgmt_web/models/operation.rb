# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_03_01
  module Models
    #
    # An operation on a resource.
    #
    class Operation

      include MsRestAzure

      # @return [String] Operation ID.
      attr_accessor :id

      # @return [String] Operation name.
      attr_accessor :name

      # @return [OperationStatus] The current status of the operation. Possible
      # values include: 'InProgress', 'Failed', 'Succeeded', 'TimedOut',
      # 'Created'
      attr_accessor :status

      # @return [Array<ErrorEntity>] Any errors associate with the operation.
      attr_accessor :errors

      # @return [DateTime] Time when operation has started.
      attr_accessor :created_time

      # @return [DateTime] Time when operation has been updated.
      attr_accessor :modified_time

      # @return [DateTime] Time when operation will expire.
      attr_accessor :expiration_time

      # @return Applicable only for stamp operation ids.
      attr_accessor :geo_master_operation_id


      #
      # Mapper for Operation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Operation',
          type: {
            name: 'Composite',
            class_name: 'Operation',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
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
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'Enum',
                  module: 'OperationStatus'
                }
              },
              errors: {
                client_side_validation: true,
                required: false,
                serialized_name: 'errors',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ErrorEntityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ErrorEntity'
                      }
                  }
                }
              },
              created_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'createdTime',
                type: {
                  name: 'DateTime'
                }
              },
              modified_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'modifiedTime',
                type: {
                  name: 'DateTime'
                }
              },
              expiration_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'expirationTime',
                type: {
                  name: 'DateTime'
                }
              },
              geo_master_operation_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'geoMasterOperationId',
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
