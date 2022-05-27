*** Variables ***
${Redfish_Host}   2001:db8:0:1:1622:3bff:feaa:f826
${OS_HOST}    192.169.100.11
${OS_USER}    root
${OS_PASSWORD}   0vss
${BMC_HOST}   192.169.100.19
${BMC_USER}   root
${BMC_PASSWORD}   0penBmc
${bmc_dst_path}   /home/root
${os_dst_path}   /tmp
${RESULT_PATH}   ${CURDIR}/results
${PYTHONS_PATH}   ${CURDIR}/pythons
${SCRIPTS_PATH}   ${CURDIR}/scripts
${CHMOD_CMD}   chmod +x
${XLSX_MODEL}   ${PYTHONS_PATH}/Astoria-SIT-TestPlan_BMCQA_EVT2.xlsx
#script name
${SDRINFO}   sdrinfo
${THRESHOLD}   threshold
${HEXDUMP}   hexdump
${Configcheck}   OVSS_Configcheck
${SENSOR_LIST_TXT}   sensorlistall.txt
${IPMI_CMDS}   IPMI_Cmds
${REDFISH_IPV6}   redfish_ipv6