# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  module Models
    #
    # Azure VM workload-specific protected item representing SQL Database.
    #
    class AzureVmWorkloadSQLDatabaseProtectedItem < ProtectedItem

      include MsRestAzure


      def initialize
        @protectedItemType = "AzureVmWorkloadSQLDatabase"
      end

      attr_accessor :protectedItemType

      # @return [String] Friendly name of the DB represented by this backup
      # item.
      attr_accessor :friendly_name

      # @return [String] Host/Cluster Name for instance or AG
      attr_accessor :server_name

      # @return [String] Parent name of the DB such as Instance or Availability
      # Group.
      attr_accessor :parent_name

      # @return [String] Parent type of DB, SQLAG or StandAlone
      attr_accessor :parent_type

      # @return [String] Backup status of this backup item.
      attr_accessor :protection_status

      # @return [ProtectionState] Backup state of this backup item. Possible
      # values include: 'Invalid', 'IRPending', 'Protected', 'ProtectionError',
      # 'ProtectionStopped', 'ProtectionPaused'
      attr_accessor :protection_state

      # @return [LastBackupStatus] Last backup operation status. Possible
      # values: Healthy, Unhealthy. Possible values include: 'Invalid',
      # 'Healthy', 'Unhealthy', 'IRPending'
      attr_accessor :last_backup_status

      # @return [DateTime] Timestamp of the last backup operation on this
      # backup item.
      attr_accessor :last_backup_time

      # @return [ErrorDetail] Error details in last backup
      attr_accessor :last_backup_error_detail

      # @return [String] Data ID of the protected item.
      attr_accessor :protected_item_data_source_id

      # @return [ProtectedItemHealthStatus] Health status of the backup item,
      # evaluated based on last heartbeat received. Possible values include:
      # 'Invalid', 'Healthy', 'Unhealthy', 'NotReachable', 'IRPending'
      attr_accessor :protected_item_health_status

      # @return [AzureVmWorkloadProtectedItemExtendedInfo] Additional
      # information for this backup item.
      attr_accessor :extended_info


      #
      # Mapper for AzureVmWorkloadSQLDatabaseProtectedItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureVmWorkloadSQLDatabase',
          type: {
            name: 'Composite',
            class_name: 'AzureVmWorkloadSQLDatabaseProtectedItem',
            model_properties: {
              backup_management_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              workload_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'workloadType',
                type: {
                  name: 'String'
                }
              },
              container_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'containerName',
                type: {
                  name: 'String'
                }
              },
              source_resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceResourceId',
                type: {
                  name: 'String'
                }
              },
              policy_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policyId',
                type: {
                  name: 'String'
                }
              },
              last_recovery_point: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastRecoveryPoint',
                type: {
                  name: 'DateTime'
                }
              },
              backup_set_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupSetName',
                type: {
                  name: 'String'
                }
              },
              protectedItemType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'protectedItemType',
                type: {
                  name: 'String'
                }
              },
              friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              server_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serverName',
                type: {
                  name: 'String'
                }
              },
              parent_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parentName',
                type: {
                  name: 'String'
                }
              },
              parent_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parentType',
                type: {
                  name: 'String'
                }
              },
              protection_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protectionStatus',
                type: {
                  name: 'String'
                }
              },
              protection_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protectionState',
                type: {
                  name: 'String'
                }
              },
              last_backup_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastBackupStatus',
                type: {
                  name: 'String'
                }
              },
              last_backup_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastBackupTime',
                type: {
                  name: 'DateTime'
                }
              },
              last_backup_error_detail: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastBackupErrorDetail',
                type: {
                  name: 'Composite',
                  class_name: 'ErrorDetail'
                }
              },
              protected_item_data_source_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protectedItemDataSourceId',
                type: {
                  name: 'String'
                }
              },
              protected_item_health_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protectedItemHealthStatus',
                type: {
                  name: 'String'
                }
              },
              extended_info: {
                client_side_validation: true,
                required: false,
                serialized_name: 'extendedInfo',
                type: {
                  name: 'Composite',
                  class_name: 'AzureVmWorkloadProtectedItemExtendedInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
