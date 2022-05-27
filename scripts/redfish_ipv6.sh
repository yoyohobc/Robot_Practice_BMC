#!/bin/bash
trap 'echo -e "\n$BASH_COMMAND"' DEBUG
curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/AccountService

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/AccountService/Accounts
 
curl --interface enx00e04c682ca3 -g -6 patch http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/AccountService/Accounts/test -d '{"Enabled":true}'
 
curl --interface enx00e04c682ca3 -g -6 post http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/AccountService/Accounts/ -d '{"UserName":"test","Password":"0penBmc1","RoleId":"ReadOnly","Enabled":true}' 

curl --interface enx00e04c682ca3 -g -6 delete http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/AccountService/Accounts/test

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/AccountService/LDAP/Certificates

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/AccountService/Roles

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/AccountService/Roles/Administrator

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/AccountService/Roles/Operator

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/AccountService/Roles/ReadOnly

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/AccountService/Roles/NoAccess

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/CertificateService

curl --interface enx00e04c682ca3 -g -6 post http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/CertificateService/Actions/CertificateService.GenerateCSR -d '{"Country":"TW","State":"Taiwan","OrganizationalUnit":"CSI","Organization":"FXN","City":"Taipei","CommonName":"test.com","CertificateCollection":{"@odata.id":"/redfish/v1/Managers/bmc/NetworkProtocol/HTTPS/Certificates"}}'

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/CertificateService/CertificateLocations

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Chassis

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Chassis/Granite_HD_1/Thermal

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Chassis/Granite_HD_1/Thermal#/Fans

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Chassis/Granite_HD_1/Thermal#/Temperatures

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Chassis/Granite_HD_1/Sensors

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Chassis/Granite_HD_1/Power

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Chassis/Granite_HD_1/Power#/Voltages


curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Chassis/SuperBigGulp/Thermal

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Chassis/SuperBigGulp/Thermal#/Fans

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Chassis/SuperBigGulp/Thermal#/Temperatures

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Chassis/SuperBigGulp/Sensors

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Chassis/SuperBigGulp/Power

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Chassis/SuperBigGulp/Power#/Voltages


curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Chassis/agoraV2AH/Thermal

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Chassis/agoraV2AH/Thermal#/Fans

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Chassis/agoraV2AH/Thermal#/Temperatures

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Chassis/agoraV2AH/Sensors

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Chassis/agoraV2AH/Power

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Chassis/agoraV2AH/Power#/Voltages



curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Chassis/mobo/Thermal

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Chassis/mobo/Thermal#/Fans

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Chassis/mobo/Thermal#/Temperatures

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Chassis/mobo/Sensors

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Chassis/mobo/Power

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Chassis/mobo/Power#/Voltages


curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/AccountService

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/ActionInfo

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/Assembly

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/AttributeRegistry

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/Bios

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/Certificate

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/CertificateLocations

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/CertificateService

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/Chassis

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/ComputerSystem

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/Drive

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/EthernetInterface

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/Event

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/EventDestination

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/EventService

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/IPAddresses

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/JsonSchemaFile

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/LogEntry

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/LogService

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/Manager

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/ManagerAccount

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/ManagerNetworkProtocol

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/Memory

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/Message

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/MessageRegistry

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/MessageRegistryFile

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/MetricDefinition

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/MetricReport

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/MetricReportDefinition

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/PCIeDevice

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/PCIeFunction

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/Power

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/Privileges

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/Processor

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/Redundancy

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/Resource

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/Role

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/Sensor

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/ServiceRoot

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/Session

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/SessionService

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/Settings

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/SoftwareInventory

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/Storage

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/Task

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/TaskService

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/TelemetryService

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/Thermal

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/UpdateService

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/VLanNetworkInterface

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/VirtualMedia

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/odata

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/redfish-error

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/redfish-payload-annotations

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/JsonSchemas/redfish-schema

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/SessionService

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/SessionService/Sessions

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Managers

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Managers/bmc

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Managers/bmc#PowerState

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Managers/bmc/EthernetInterfaces

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Managers/bmc/EthernetInterfaces/eth1

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Managers/bmc/EthernetInterfaces/eth1/VLANs

curl --interface enx00e04c682ca3 -g -6 post http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Managers/bmc/EthernetInterfaces/eth1/VLANs -d '{"VLANEnable":true}'

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Managers/bmc/LogServices

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Managers/bmc/LogServices/Journal

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Managers/bmc/LogServices/Journal/Entries

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Managers/bmc/NetworkProtocol

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Managers/bmc/NetworkProtocol/http/Certificates

#curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Managers/bmc/NetworkProtocol/http/Certificates/<ID>

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Managers/bmc/Truststore/Certificates

curl -X DELETE -k http://192.169.100.19/redfish/v1/Managers/bmc/Truststore/Certificates

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Registries

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Registries/Base

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Registries/OpenBMC

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Registries/ResourceEvent

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Registries/TaskEvent

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Systems

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Systems/system

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Systems/system#PowerState

#curl --interface enx00e04c682ca3 -g -6 post http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Systems/system/Actions/ComputerSystem.Reset -d '{"ResetType":"off"}'
#
#sleep 30
#
curl --interface enx00e04c682ca3 -g -6 post http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Systems/system/Actions/ComputerSystem.Reset -d '{"ResetType":"on"}'
#
#sleep 500

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Systems/system/Bios

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Systems/system/LogServices

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Systems/system/LogServices/EventLog

curl --interface enx00e04c682ca3 -g -6 post http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Systems/system/LogServices/EventLog/Actions/LogService.ClearLog

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Systems/system/LogServices/EventLog/Entries/redfish/v1/Chassis/Granite_HD_1/Memory/redfish/v1/Systems/system/Processors	

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Chassis/mobo/Memory

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Systems/system/Processors

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Systems/system/Storage

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Systems/system/Storage/1

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Chassis/mobo/PCIeDevices

#curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Systems/system/Storage/1/redfish/v1/Chassis/agoraV2AH/PCIeDevices/redfish/v1/Systems/{ComputerSystemId}/SimpleStorage	

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/UpdateService

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/UpdateService/FirmwareInventory

curl --interface enx00e04c682ca3 -g -6 post http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Managers/bmc/Actions/Manager.ResetToDefaults -d '{"ResetToDefaultsType":"ResetAll"}'

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Chassis/Granite_HD_1/Actions/Chassis.Reset -d '{"ResetType":"PowerCycle"}'

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Chassis/SuperBigGulp/Actions/Chassis.Reset -d '{"ResetType":"PowerCycle"}'

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Chassis/agoraV2AH/Actions/Chassis.Reset -d '{"ResetType":"PowerCycle"}'

curl --interface enx00e04c682ca3 -g -6 http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Chassis/mobo/Actions/Chassis.Reset -d '{"ResetType":"PowerCycle"}'

curl --interface enx00e04c682ca3 -g -6 post http://[2001:db8:0:1:1622:3bff:feaa:f826]:80/redfish/v1/Managers/bmc/Actions/Manager.Reset -d '{"ResetType":"GracefulRestart"}'