#!/bin/bash
trap 'echo -e "\n$BASH_COMMAND"' DEBUG
ipmitool sel elist