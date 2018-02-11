# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::Mgmt::V2017_07_01_preview
  module Models
    #
    # The result of the ServiceFabric runtime versions
    #
    class ClusterCodeVersionsResult

      include MsRestAzure

      # @return [String] The identification of the result
      attr_accessor :id

      # @return [String] The name of the result
      attr_accessor :name

      # @return [String] The result resource type
      attr_accessor :type

      # @return [String] The Service Fabric runtime version of the cluster.
      attr_accessor :code_version

      # @return [String] The date of expiry of support of the version.
      attr_accessor :support_expiry_utc

      # @return [Enum] Indicates if this version is for Windows or Linux
      # operating system. Possible values include: 'Windows', 'Linux'
      attr_accessor :environment


      #
      # Mapper for ClusterCodeVersionsResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ClusterCodeVersionsResult',
          type: {
            name: 'Composite',
            class_name: 'ClusterCodeVersionsResult',
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
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              code_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.codeVersion',
                type: {
                  name: 'String'
                }
              },
              support_expiry_utc: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.supportExpiryUtc',
                type: {
                  name: 'String'
                }
              },
              environment: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.environment',
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
