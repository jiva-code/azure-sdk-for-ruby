# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Face::V1_0
  module Models
    #
    # Result of the verify operation.
    #
    class VerifyResult

      include MsRestAzure

      # @return [Boolean] True if the two faces belong to the same person or
      # the face belongs to the person, otherwise false.
      attr_accessor :is_identical

      # @return [Float] A number indicates the similarity confidence of whether
      # two faces belong to the same person, or whether the face belongs to the
      # person. By default, isIdentical is set to True if similarity confidence
      # is greater than or equal to 0.5. This is useful for advanced users to
      # override "isIdentical" and fine-tune the result on their own data.
      attr_accessor :confidence


      #
      # Mapper for VerifyResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VerifyResult',
          type: {
            name: 'Composite',
            class_name: 'VerifyResult',
            model_properties: {
              is_identical: {
                client_side_validation: true,
                required: true,
                serialized_name: 'isIdentical',
                type: {
                  name: 'Boolean'
                }
              },
              confidence: {
                client_side_validation: true,
                required: true,
                serialized_name: 'confidence',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
