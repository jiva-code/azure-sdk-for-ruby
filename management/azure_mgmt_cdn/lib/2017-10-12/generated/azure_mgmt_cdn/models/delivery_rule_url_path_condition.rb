# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2017_10_12
  module Models
    #
    # Defines the URL path condition for the delivery rule.
    #
    class DeliveryRuleUrlPathCondition < DeliveryRuleCondition

      include MsRestAzure


      def initialize
        @name = "UrlPath"
      end

      attr_accessor :name

      # @return [UrlPathConditionParameters] Defines the parameters for the
      # condition.
      attr_accessor :parameters


      #
      # Mapper for DeliveryRuleUrlPathCondition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UrlPath',
          type: {
            name: 'Composite',
            class_name: 'DeliveryRuleUrlPathCondition',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              parameters: {
                client_side_validation: true,
                required: true,
                serialized_name: 'parameters',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'UrlPathConditionParameters'
                }
              }
            }
          }
        }
      end
    end
  end
end
