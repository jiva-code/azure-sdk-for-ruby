# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2016_04_02
  module Models
    #
    # CustomDomain properties required for custom domain creation or update.
    #
    class CustomDomainParameters

      include MsRestAzure

      # @return [String] The host name of the custom domain. Must be a domain
      # name.
      attr_accessor :host_name


      #
      # Mapper for CustomDomainParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CustomDomainParameters',
          type: {
            name: 'Composite',
            class_name: 'CustomDomainParameters',
            model_properties: {
              host_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.hostName',
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
