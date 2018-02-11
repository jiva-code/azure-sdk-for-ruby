# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Mgmt::V2016_02_01_preview
  module Models
    #
    # Model object.
    #
    #
    class ErrorBody

      include MsRestAzure

      # @return [String] error code
      attr_accessor :code

      # @return [String] error message
      attr_accessor :message


      #
      # Mapper for ErrorBody class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ErrorBody',
          type: {
            name: 'Composite',
            class_name: 'ErrorBody',
            model_properties: {
              code: {
                client_side_validation: true,
                required: true,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: true,
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
