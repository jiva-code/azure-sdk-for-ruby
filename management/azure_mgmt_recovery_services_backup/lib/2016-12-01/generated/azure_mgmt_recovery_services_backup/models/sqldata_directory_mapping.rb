# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  module Models
    #
    # Encapsulates information regarding data directory
    #
    class SQLDataDirectoryMapping

      include MsRestAzure

      # @return [SQLDataDirectoryType] Type of data directory mapping. Possible
      # values include: 'Invalid', 'Data', 'Log'
      attr_accessor :mapping_type

      # @return [String] Restore source logical name path
      attr_accessor :source_logical_name

      # @return [String] Restore source path
      attr_accessor :source_path

      # @return [String] Target path
      attr_accessor :target_path


      #
      # Mapper for SQLDataDirectoryMapping class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SQLDataDirectoryMapping',
          type: {
            name: 'Composite',
            class_name: 'SQLDataDirectoryMapping',
            model_properties: {
              mapping_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'mappingType',
                type: {
                  name: 'String'
                }
              },
              source_logical_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceLogicalName',
                type: {
                  name: 'String'
                }
              },
              source_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourcePath',
                type: {
                  name: 'String'
                }
              },
              target_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetPath',
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
