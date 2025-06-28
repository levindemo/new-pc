#!/bin/env bash
#install git bash and run the script


SCRIPT_FULL_PATH=$(realpath "${BASH_SOURCE[0]}")
CUR_DIR=$(dirname "$(realpath "${BASH_SOURCE[0]}")")

echo "run in script ${CUR_DIR}"

USER=`whoami`

sed -i "s/_user_name_/${USER}/g" ${CUR_DIR}/maven.settings.xml