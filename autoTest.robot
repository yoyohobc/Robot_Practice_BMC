*** Settings ***
Resource  ./service.robot
Test Teardown   Close SCP and SSH
*** Test Cases ***
Run BMC
    [Tags]  Run_BMC
    Copy Scripts to BMC
    Execute scripts on BMC
    Get result from BMC
    SDR Auto Test

Run OVSS
    [Tags]  Run_OVSS
    Copy Scripts to OS
    Execute scripts on OS
    Get result from OS

Run Redfish
    [Tags]  Run_Redfish
    Redfish Auto

Run IPMI
    [Tags]  Run_IPMI
    Get IPMI result