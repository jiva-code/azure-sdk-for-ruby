# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataLakeStore::Mgmt::V2016_11_01
  module Models
    #
    # Data Lake Store account name availability result information.
    #
    class NameAvailabilityInformation

      include MsRestAzure

      # @return [Boolean] The Boolean value of true or false to indicate
      # whether the Data Lake Store account name is available or not.
      attr_accessor :name_available

      # @return [String] The reason why the Data Lake Store account name is not
      # available, if nameAvailable is false.
      attr_accessor :reason

      # @return [String] The message describing why the Data Lake Store account
      # name is not available, if nameAvailable is false.
      attr_accessor :message


      #
      # Mapper for NameAvailabilityInformation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NameAvailabilityInformation',
          type: {
            name: 'Composite',
            class_name: 'NameAvailabilityInformation',
            model_properties: {
              name_available: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'nameAvailable',
                type: {
                  name: 'Boolean'
                }
              },
              reason: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'reason',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'message',
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
