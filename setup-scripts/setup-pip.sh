#!/bin/env bash


SCRIPT_FULL_PATH=$(realpath "${BASH_SOURCE[0]}")
CUR_DIR=$(dirname "$(realpath "${BASH_SOURCE[0]}")")


echo "run in script ${CUR_DIR}"


user=`whoami`

if [ ! -e "$APPDATA/pip" ] ; then 
    mkdir -p "$APPDATA/pip"
fi

cp $APPDATA/pip/pip.ini $APPDATA/pip/pip.ini_backup_`date +"%Y%m%d_%H%M%S"`
cp ${CUR_DIR}/window/pip.ali.conf $APPDATA/pip/pip.ini


if [[ "$DEBUG" == "TRUE" ]] ; then
cat $APPDATA/pip/pip.ini
fi