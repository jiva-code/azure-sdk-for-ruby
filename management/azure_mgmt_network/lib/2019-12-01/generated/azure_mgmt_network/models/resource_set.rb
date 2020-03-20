# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_12_01
  module Models
    #
    # The base resource set for visibility and auto-approval.
    #
    class ResourceSet

      include MsRestAzure

      # @return [Array<String>] The list of subscriptions.
      attr_accessor :subscriptions


      #
      # Mapper for ResourceSet class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourceSet',
          type: {
            name: 'Composite',
            class_name: 'ResourceSet',
            model_properties: {
              subscriptions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'subscriptions',
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
          }
        }
      end
    end
  end
end
