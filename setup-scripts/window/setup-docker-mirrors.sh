#!/bin/env sh

user=`whoami`

/c/Users/${user}/.docker/daemon.json /c/Users/${user}/.docker/.daemon.json_backup_`date +"%Y%m%d_%H%M%S"`
cp docker.daemon.json /c/Users/${user}/.docker/daemon.json

cat /c/Users/${user}/AppData/Roaming/Code/User/settings.json
