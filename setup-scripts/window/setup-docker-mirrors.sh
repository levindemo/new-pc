#!/bin/env sh

user=`whoami`

cp /c/Users/${user}/.docker/daemon.json /c/Users/${user}/.docker/daemon.json /c/Users/${user}/.docker/.daemon.json_backup_`date +"%Y%m%d_%H%M%S"`
cp docker.daemon.json /c/Users/${user}/.docker/daemon.json

if [[ "$DEBUG" == "TRUE" ]] ; then
cat /c/Users/`whoami`/.docker/daemon.json
fi