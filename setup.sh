#!/bin/env bash
#install git bash and run the script

USER=`whoami`

sed -i "s/_user_name_/${USER}/g" settings.xml