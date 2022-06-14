*** Settings ***
Resource  ./commons.robot
Library  ./pythons/sdrMapping.py
Library  ./pythons/sdrAutoInput.py
Library  ./pythons/redfishAuto.py

*** Keywords ***

SDR Auto Test
    sdrMapping.sdrTable_mapping
    sdrAutoInput.sdr_input_xlsx

Redfish Auto
    redfishAuto.replace_ip
    redfishAuto.run_redfish_script
    redfishAuto.redfish_input

Copy Sanity Scripts to BMC
    SCP Open to BMC
    FOR    ${ScriptName}    IN    @{SANITY_LIST}
        scp.Put File    ${SCRIPTS_PATH}/${ScriptName}.sh  ${bmc_dst_path}/
    END
    scp.Close Connection

Copy Scripts to BMC
    @{ScriptsList} =    Set Variable    ${SDRINFO}   ${THRESHOLD}   ${HEXDUMP}
    SCP Open to BMC
    FOR    ${ScriptName}    IN    @{ScriptsList}
        scp.Put File    ${SCRIPTS_PATH}/${ScriptName}.sh  ${bmc_dst_path}/
    END
    scp.Close Connection

Copy Scripts to OS
    SCP Open to OS
    scp.Put File    ${SCRIPTS_PATH}/${Configcheck}.sh  ${os_dst_path}/
    scp.Close Connection

Execute scripts on OS
    SSH Login to OS

    Execute script   ${Configcheck}   ${os_dst_path}

    ssh.Close Connection

Execute scripts on BMC
    @{ScriptsList} =    Set Variable    ${SDRINFO}   ${THRESHOLD}
    SSH Login to BMC

    Execute multiple scripts    @{ScriptsList}    scripts_path=${bmc_dst_path}
    Execute script   ${HEXDUMP}   ${bmc_dst_path}   is_output=${False}   is_format=${True}

    ssh.Execute Command     ipmitool sensor list all > ${bmc_dst_path}/${SENSOR_LIST_TXT}

    ssh.Close Connection

Execute sanity scripts on BMC
    SSH Login to BMC

    Execute multiple scripts    @{SANITY_LIST}    scripts_path=${bmc_dst_path}

    ssh.Close Connection

Get result from OS
    SCP Open to OS
    scp.Get File    ${os_dst_path}/${Configcheck}.txt  ${RESULT_PATH}
    scp.Close Connection
    OS Execute Command      rm ${os_dst_path}/*

Get result from BMC
    @{FilesList} =    Set Variable    ${SDRINFO}.txt   ${THRESHOLD}.txt   ${HEXDUMP}result
    SCP Open to BMC
    
    FOR    ${File}    IN    @{FilesList}
        scp.Get File    ${bmc_dst_path}/${File}  ${RESULT_PATH}
    END

    scp.Get File    ${bmc_dst_path}/${SENSOR_LIST_TXT}  ${PYTHONS_PATH}
    scp.Close Connection

    BMC Execute Command     rm *

Get sanity result from BMC
    SCP Open to BMC

    FOR    ${File}    IN    @{SANITY_LIST}
        scp.Get File    ${bmc_dst_path}/${File}.txt  ${SANITY_PATH}
    END

    scp.Close Connection

    BMC Execute Command     rm *

Get IPMI result
    Wait Until Keyword Succeeds
    ...   7 min  10 sec   SCP Open to BMC
    scp.Put File    ${SCRIPTS_PATH}/${IPMI_CMDS}.sh  ${bmc_dst_path}/
    SSH Login to BMC
    Execute script   ${IPMI_CMDS}   ${bmc_dst_path}
    scp.Get File    ${bmc_dst_path}/${IPMI_CMDS}.txt  ${RESULT_PATH}
    BMC Execute Command     rm *
    Close SCP and SSH

rrr kkk
    SSH Login to BMC
    ${output}  ${stderr}=  ssh.Execute Command  grep ^VERSION_ID= /etc/os-release | cut -f 2 -d '='
    ...  return_stderr=True
    Log  ${stderr}