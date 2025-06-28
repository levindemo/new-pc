#!/bin/env sh

user=`whoami`


cp vs-code.local.setting.json /c/Users/${user}/AppData/Roaming/Code/User/settings.json

cat /c/Users/${user}/AppData/Roaming/Code/User/settings.json
