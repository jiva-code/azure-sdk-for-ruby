# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2017_09_01
  module Models
    #
    # Settings for the operating system disk of the virtual machine.
    #
    #
    class OSDisk

      include MsRestAzure

      # @return [CachingType] The type of caching to be enabled for the data
      # disks. none - The caching mode for the disk is not enabled. readOnly -
      # The caching mode for the disk is read only. readWrite - The caching
      # mode for the disk is read and write. Default value is none. Possible
      # values include: 'None', 'ReadOnly', 'ReadWrite'
      attr_accessor :caching


      #
      # Mapper for OSDisk class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OSDisk',
          type: {
            name: 'Composite',
            class_name: 'OSDisk',
            model_properties: {
              caching: {
                client_side_validation: true,
                required: false,
                serialized_name: 'caching',
                type: {
                  name: 'Enum',
                  module: 'CachingType'
                }
              }
            }
          }
        }
      end
    end
  end
end
