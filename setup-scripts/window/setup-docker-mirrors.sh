#!/bin/env bash


SCRIPT_FULL_PATH=$(realpath "${BASH_SOURCE[0]}")
CUR_DIR=$(dirname "$(realpath "${BASH_SOURCE[0]}")")


echo "run in script ${CUR_DIR}"

user=`whoami`

cp /c/Users/`whoami`/.docker/daemon.json /c/Users/`whoami`/.docker/.daemon.json_backup_`date +"%Y%m%d_%H%M%S"`
cp ${CUR_DIR}/docker.daemon.json /c/Users/`whoami`/.docker/daemon.json

if [[ "$DEBUG" == "TRUE" ]] ; then
    cat /c/Users/`whoami`/.docker/daemon.json
fi