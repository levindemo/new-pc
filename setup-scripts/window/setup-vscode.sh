#!/bin/env bash
#install git bash and run the script


SCRIPT_FULL_PATH=$(realpath "${BASH_SOURCE[0]}")
CUR_DIR=$(dirname "$(realpath "${BASH_SOURCE[0]}")")


echo "run in script ${CUR_DIR}"


user=`whoami`


cp ${CUR_DIR}/vs-code.local.setting.json /c/Users/${user}/AppData/Roaming/Code/User/settings.json

if [[ "$DEBUG" == "TRUE" ]] ; then
    cat /c/Users/${user}/AppData/Roaming/Code/User/settings.json
fi